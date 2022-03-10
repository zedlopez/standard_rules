#!/usr/bin/env ruby
# coding: utf-8

# This is some of the ugliest code I've ever written, but I figured
# I should commit it for reference.

require 'pp'
require 'cgi/util'

$label = {}

# TODO
# create indices of constants, globals, jump labels?


def header(title)
  header_str =<<HEADER
<!doctype html>
<html lang="en">
<meta charset="utf-8">
<head><title>#{title}</title>
  <style>
li { padding-bottom: .16rem; padding-top: .16rem; }
ul.unloaded { list-style-type: none; margin-top: 0; margin-bottom: 0; padding-left: 1rem; }
details summary { 
  cursor: pointer;
}
a { text-decoration: none;
padding-bottom: .5px;
border-bottom: 1px dotted black;
}
span.th, span.td { display: table-cell; }
span.td { padding-left: 2rem; padding-top: .1rem; padding-bottom: .1rem; }
span.th { width:4rem; text-align: right; }
td { padding-bottom: .16rem; padding-top: .16rem; }
span.tr { display: table-row; }
.pre-lines { font-family: monospace; margin-left: 3rem; line-height: 1.5rem; }
h1 { margin: 0; }
.fixed { font-family: monospace; background-color: #e7e7d7; }
.em { font-style: italic; }
.center { text-align: center; }
body { font-family: sans-serif; margin: .75rem 0 3rem 3rem; background-color: #fafaf0; width: 80rem; }
.pre { font-family: monospace; margin: auto; width: 80rem; }
#front_matter,.text { width: 48rem; }
/* h3 { margin-top: 1.5rem; padding-top: 1.5rem; }*/
.text { border-bottom: .5px solid black; border-top: .5px solid black; margin-top: 1rem;
padding-bottom: .5rem; margin-bottom: 1.5rem; margin-top: 1.75rem; padding-top: .25rem;}
footer { margin-top: 3rem; padding-top: 1rem; border-top: .5px solid black; margin-bottom: 0;}
/*.subtitle { font-weight: bold; font-size: 1.2rem; }*/
.dstring { font-weight: bold; color: #095097; }
.sstring { font-weight: bold; color: #095097; }
.comment { color: #156D15; } /* #207D20; */
td.content { padding-right: 2rem; vertical-align: top;}
header { border-bottom: 1px solid black; padding-top: .75rem; padding-bottom: .75rem; margin-bottom: 1rem;}
</style>
</head>
<body>
<header>
<h1>I6 Template Layer</h1>
<div class="subtitle"><a href="http://inform7.com/">Inform 7 6M62</a> &bull; <a href="./index.html">Contents</a> &bull; <a href="./Introduction.i6t.html">Introduction</a> 
&bull; <a href="fn_index.html">Function Index</a> 
&bull; <a href="rules_index.html">Rules Index</a> 
</div></header>
<div id="front_matter">
HEADER
  header_str
end

dir = ARGV.size.zero?  ? Dir.pwd : ARGV.shift

def htmlfile(filename)
  filename +  '.html'
end

main = Hash.new {|h,k| h[k] = Hash.new {|i,j| i[j] = {} } }

$label_to_sym = { "C" => :constant, "G" => :global, "[" => :fn, "." => :jump }

$sections = Hash.new {|h,k| h[k] = [] }

Dir[File.join(dir, '*.i6t')].each do |filename|
  filename = File.basename(filename)
  File.open(filename) do |f|
    current = 0
    f.readlines.each.with_index(1) do |line, index|
      if main[filename][current][:status] == :p
        current = index
        main[filename][current][:status] = :text
      elsif main[filename][current][:status] == :code
        current = index
        main[filename][current][:status] = :pre
      end
      if line.match(/\A@c/) 
        current = index
        main[filename][current][:status] = :code
        line = ""
      end
      if line.match(/\A@p\s*(.*)\s*\Z/)
        main[filename].delete(index-1) if main[filename].key?(index-1) and main[filename][index-1][:status] == :pre and main[filename][index-1][:line][0].empty?
        current = index
        main[filename][current][:line] = [line]
        main[filename][current][:status] = :p
        $sections[filename] << $1
        next
      end
      if line.match(/\A\s*(\.[^\s;]+)/)
        $label[$1] = [ filename, index, $label_to_sym[line.strip[0]] ]
      elsif line.match(/\A\s*(?:Global|Constant|\[)\s+([^\s;]+)/)
        $label[$1] = [ filename, index, $label_to_sym[line.strip[0]] ]
      end
      if  main[filename][current][:status] == :text and !line.match(/\S/)
        current = index
        main[filename][current][:status] = :text
      end
      if main[filename][current][:status] == :pre
        main[filename][index][:line] = [ line.chomp ]
        main[filename][index][:status] = :pre
        next
      end
      main[filename][current][:line] ||= []
      main[filename][current][:line] << line.chomp
      main[filename][current][:status] ||= :misc
    end
  end
end

footer=%Q{</div><footer><p><em>From I6T lib 6/12N &copy; Graham Nelson and published under the <a href="https://github.com/zedlopez/standard_rules/blob/main/LICENSE.md">Artistic License 2.0</a>. Distributed with <a href="http://inform7.com/">Inform 7 6M62</a>.</em></p></footer></body></html>}

def detex(phrase)
  return "" if phrase.nil?
  orig = phrase
  result =  phrase.gsub(/\\leq/, ' &le; ').gsub(/\\geq/, ' &ge; ').gsub(/\\neq/,' &ne; ').gsub(/\\in/,' &isin; ').gsub(/\\sim/, " ~ ")
  result.gsub!(/_{([^}]+)}/) do |m| x = $1; "<sub>#{x}</sub>" end
  result.gsub!(/_([0-9a-zA-Z]+)/) do |m| y = $1; "<sub>#{y}</sub>" end
  result.gsub!(/\^{([^}]+)}/) do |m| z = $1; "<sup>#{z}</sup>" end
  result.gsub!(/\^([\S]+)/) do |m| z = $1; "<sup>#{z}</sup>" end
  if orig != result
    puts orig
    puts result
  end
  return result
end

def safely(filename, term)
  [File.basename(filename, '.i6t'), term.gsub(/_/,'-').gsub(/\s+/,'-').gsub(/[^\w-]/,'')].join('-').downcase
end

def htmlify(h)
  return %Q{<span class="#{h[:type]}">#{CGI.h(h[:chars].join)}</span>} unless h[:type] == :plain
  line = h[:chars].join
  line = case line
         when /\A{-segment:([^}]+?)\.i6t}/
           %Q{\{-segment:<a href="./#{$1}.i6t.html">#{$1}.i6t</a>\}}
         else
           CGI.h(line)
         end.gsub(/(\bjump(?: )+)([^;]+)/) do |m|
    key = ".#{$2}"
    $label.key?(key) ? %Q{jump <a href="./#{htmlfile($label[key][0])}#line#{$label[key][1]}">#{$2}</a>} : m
  end
  line
end

def file_contents(filename)
  result = []
  result << %Q{<details><summary>#{File.basename(filename, '.i6t')} contents</summary><ul class="unloaded">}
  $sections[filename].each do |sect|
    result << %Q{<li><a href="./#{filename}.html##{safely(filename,sect)}">#{sect.sub(/\.\Z/,'')}</a></li>}
  end
  result << "</ul></details>"
  result.join
end

main.each do |filename, hash|
  outfile = htmlfile(filename)
  File.open(outfile, 'w') do |f|
    f.puts(header(File.basename(filename, '.i6t')))
    status = nil
    in_comment = false
    in_dstring = false
    in_sstring = false
    hash.keys.sort.each do |line_num|
      next if hash[line_num].empty?
      prev_status = status
      status = hash[line_num][:status]
      line = ""
      line_array = [{ type: :plain, chars: [] }]
      if status == :text
        paragraph = "<p>"
        hash[line_num][:line].each do |line|
          if line.empty?
            paragraph += "</p><p>"
          elsif line.match(/\A\\centerline{(\\it)?([^}]+)}/)
            paragraph += %Q{</p><div class="center#{$1 ? " em":""}">#{CGI.h($2)}</div>}
          elsif line.match(/\A\s+\|([^|\}]+)\|(?:\s+{([^\}]+)})?\s*\Z/)
            first = $1
            second = $2
            second = second.sub!(/\\it/,'\\em') if second
            paragraph += '<div class="pre-lines">' + CGI.h(first) + (second ? (' ' + CGI.h("{#{second}}")) : '') + '</div>'
          else
            paragraph += " " + CGI.h(line)
          end
        end
        line = paragraph
      else
        line = hash[line_num][:line].join(" ")
      end
      if status == :code
        f.puts('</div><div class="pre">')
        next
      end
      if status == :pre
        f.print(%Q{<span class="tr"><span class="th" id="line#{line_num}">#{line_num}</span><span class="td">})
        line = line.gsub(/\t/, '    ')
        line.sub!(/\A(\s+)/,"")
        whitespace_len = $1 ? $1.length : 0
        in_comment = false;
        line.split(//).each do |c|
          if in_comment or !['"','!',"'"].member?(c)
            line_array.last[:chars] << c
            next
          end
          if c == '!' and !in_comment and !in_dstring and !in_sstring
            line_array << { type: :comment, chars: []}
            line_array.last[:chars] << c
            in_comment = true
          elsif c == '"' and !in_sstring
            if !in_dstring
              line_array << { type: :dstring, chars: []}
              line_array.last[:chars] << c
              in_dstring = true
            else # we're in_dstring
              line_array.last[:chars] << c
              line_array << { type: :plain, chars: []}
              in_dstring = false
            end
          elsif c == "'" and !in_dstring
            if !in_sstring
              line_array << { type: :sstring, chars: []}
              line_array.last[:chars] << c
              in_sstring = true
            else # we're in_sstring
              line_array.last[:chars] << c
              line_array << { type: :plain, chars: []}
              in_sstring = false
            end
          end
        end
        line = ("&nbsp;" * whitespace_len) + line_array.map {|h| htmlify(h)}.inject("",:+)
      else
        f.puts("</div><div class='text'>") if prev_status == :pre
        line.gsub!(/(\s+)?--(\b|$|\s+)/,' &ndash; ')
        # Catch cases like |$FFFF|
        line.gsub!(/\|\$([^$|]*[^$])\|/) do |m|
          term = $1;
          %Q{<em>&dollar;#{term}</em>}
        end
        # other cases of |xxx| or |fn(x)| or |Template.i6t|
        line.gsub!(/\|(([^(|\s]+)(?:\([^)|]*\))?)\|/) do |m|
          text_matched = $1
          term = $2
          if term.match(/\w+\.i6t\Z/)
            %Q{<a href="./#{htmlfile(term)}">#{term}</a>}
          elsif $label.key?(term)
            %Q{<span class="fixed"><a href="./#{htmlfile($label[term][0])}#line#{$label[term][1]}">#{text_matched}</a></span>}
          else
            %Q{<span class="fixed">#{term}</span>}
          end
        end

        #cases of $$ line to be centered $$
        line.gsub!(/\$\$([^$]+?)\$\$/) do |m| term = $1; %Q{<p class="center"><em>#{detex(term)}</em></p>} end

        #cases of $ span to be italicized $
        line.gsub!(/\$([^$]+?)\$/) do |m| term = $1; %Q{<em>#{detex(term)}</em>} end
        # is this doing anything now, or redundant with above?
        line.gsub!(/\|([^\|]+?)\|/) do |m|
          %Q{<span class="fixed">#{$1}</span>}
        end
        line.gsub!(/{\\it([^}]+?)}/) do |m|
          "<strong>#{$1}</strong>"
        end
        line.gsub!(/{\\em([^}]+?)}/) do |m|
          "<em>#{$1}</em>"
        end
        line.gsub!(/\\S/,"&sect;")
        line.gsub!(/&quot;([^&\s]+\.i6t)&quot;/) do |m|
          %Q{<a href="./#{htmlfile($1)}">#{$1}</a>}
        end
        line.gsub!(/\\TeX/, "T<sub>E</sub>X")

        line = case line
               when /\A@Purpose/
                 line.sub(/\A@/, '')
               when /\AB\/[^:]+:\s*(.+?)\s+Template.\s*/
                 %Q{<h2><a href="./#{filename}.txt">#{filename}</a></h2>} + file_contents(filename)
               when /\A@p\s*(.+?)\s*\Z/
                 term = $1
                 %Q{<h3 id="#{safely(filename,term)}">#{term}</h3><p>}
               when /\A@-+\s*\Z/
                 %Q{<div style="border-bottom: 1px solid black"></div></div>}
               else
                 line
               end.gsub(/\\qquad\s+/, "&emsp;&emsp;").gsub(/\\%/, "%").gsub(/\\log/," log").gsub(/\s+/," ")
      end
      puts("#{filename} #{line_num} #{line}") if line.match(/(\||\$|\\)/) and status == :text
      f.print(line)
      f.puts('</span></span>') if  status == :pre
    end
    f.puts(footer)
  end
end

File.open("rules_index.html", 'w') do |r|
  r.puts(header("Rules Index"));
  r.puts "<h2>Rules Index</h2><p><em>Converted to mixed-case for easier reading.</em></p><table>"
  File.open("fn_index.html",'w') do |f|
    f.puts(header("Function Index"));
    f.puts "<h2>Function Index</h2><table>"
    f.puts "<p><em>Exclusive of Rules</em></p>"
    $label.filter {|k,v| v.last == :fn }.sort_by {|k,v| k}.each do |k,v|
      name = k
      name = name.capitalize.sub(/.\Z/,'R') if k.match(/_R\Z/)
      line = %Q{<tr><td><a href="./#{v[0]}.html#line#{v[1]}">#{name}</a></td><td><a href="#{v[0]}.html">#{v[0]}</a></td><tr>}
      (k.match(/_R\Z/) ? r : f).puts line
    end
    f.puts "</table>"
    f.puts(footer);
  end
  r.puts "</table>"
  r.puts(footer);
end

def contents_line(filename, strong = false)
  result = []
  result << %Q{<tr><td class="content">#{strong ? '<strong>' : ''}<a href="./#{filename}.html">#{File.basename(filename, ".i6t")}</a>#{strong ? '</strong>' : ''}</td><td>}
  #  result << "</ul></details>"
  result << file_contents(filename)
  result << '</td></tr>'
  result.join
end

File.open("index.html","w") do |f|
  f.puts(header("I6 Template Layer"));
  f.puts("<table>")
  f.puts(contents_line('Introduction.i6t', :strong))
  main.keys.sort.each do |k|
    next if k.match(/\AIntroduction/)
    f.puts contents_line(k)
  end
  f.puts "</table>"
  f.puts footer
end
