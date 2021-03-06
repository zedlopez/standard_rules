function toggle_details() {
   var openness, toggle_link;
   toggle_link = document.getElementById("toggle");
   openness = toggle_link.classList.toggle("open");
document.querySelectorAll("details.full-example").forEach(detail => { if (openness) { detail.setAttribute("open", true); } else { detail.removeAttribute("open");} });
   toggle_link.innerText = (openness ? "Close" : "Open") + " all examples";
   }


function copyCode(text) { navigator.clipboard.writeText(text); }


var links = document.getElementsByTagName('a');
for (var i = 0; i < links.length; i++) {
    if (links[i].href.match(/^#example-\d+/)) {
	links[i].onClick = function() { links[i].href.match(/^#example-(\d+)$/); var example = document.getElementById($1).setAttribute('open'); return true; };
    }
}

function add_bar(update) {
    let urlParams = new URLSearchParams(window.location.search);
    let navbar = document.querySelector('div.index-navbar');

    if (navbar && urlParams.has('project')) {
        navbar.setAttribute('class', 'index-navbar'); // removes hidden
        let project = decodeURIComponent(urlParams.get('project'));
        let index_root = project + '/.index/';
        let build = project + '/Build/';
        let query_arg = "?project="+encodeURIComponent(project);

        let links = [
            { "General Index": document.getElementById('general_index').href },
            { "Docs": document.getElementById('docs').href },
            { "Extensions": index_root + 'doc/Extensions.html' },
            { "Definitions": index_root + 'doc/ExtIndex.html' },
            { "Debug Log": build + 'debug_log.html' },
            { "Problems": build + 'problems.html' },
            { "Source": index_root + 'story.html' },
            { "Project Index": index_root + 'Index/Welcome.html' } ];
        let sp = document.createTextNode(" ");
        links.forEach(h => {
            Object.entries(h).forEach(([text, url]) => {
                let my_id = text.toLowerCase().replace(' ', '_');
                let a = document.querySelector('#'+my_id);
                let url_target = "file://"+url+query_arg;
                if (a) {
                    let parts = a.href.split('#');
                    let qparts = parts[0].split('?');
                    a.href = qparts[0] +  (qparts[1] ? ('?' + qparts[1]) : query_arg) + (parts[1] ? ('#' + parts[1]) : "");
                }
                else {
                    a = document.createElement('a');
                    let href = document.createAttribute("href");
                    href.value = url_target;
                    a.setAttributeNode(href);
                    let elem_id = document.createAttribute("id");
                    elem_id.value = my_id;
                    a.setAttributeNode(elem_id);
                    let linktext = document.createTextNode(text);
                    a.appendChild(linktext);
                    navbar.insertBefore(sp.cloneNode(), navbar.firstChild);
                    navbar.insertBefore(a, navbar.firstChild);
                }
            })});
        if (update) {
            let main_links = document.querySelectorAll('main a');
            main_links.forEach(a => {
                if (!a.href.startsWith('javascript:') || (a.href.match(/[^:]+:\/\// && !a.href.startsWith('file:')))) {
                    let parts = a.href.split('#')
                    a.href = parts[0] + query_arg + (parts[1] ? ('#' + parts[1]) : "");
                } });
        }
    }
}



document.addEventListener("DOMContentLoaded", add_bar);