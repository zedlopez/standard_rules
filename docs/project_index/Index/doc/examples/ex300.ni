"Ibid."

The Ship Inn is a room. "Here you are in a lovely pub which your guidebook assures you is extremely authentic. [1 as a footnote].

To your left sits a party of Italians, with their guidebook.

To your right is a silent, but not unappealing, young man.".

A party of Italians and a silent young man are people in the Ship Inn. The Italians and the young man are scenery.

The table is a supporter in the Ship Inn. On the table is a mysterious pie. The description of the pie is "Your waitress told you it was the specialty of the day, Steak and Owl Pie. [2 as a footnote]." The pie is edible.

Table of Footnotes
assignment	note
a number	"Francis Drake ate here, if the sign on the door is to be believed"
--	"this is unlikely, considering that owls are protected animals in England these days [3 as a footnote]"
--	"moreover, you can't imagine that owl would be very tasty"

Footnotes mentioned is a number that varies.

[Whenever we mention a footnote for the first time, we need to assign it a number, which we will use consistently thereafter. And it's probably a good idea to protect ourselves against the author accidentally using a number too large for the footnote table, too. So:]

To say (footnote - a number) as a footnote:
	if footnote > number of filled rows in the Table of Footnotes:
		say "Programming error: footnote assignment out of range.";
	otherwise:
		choose row footnote in the Table of Footnotes;
		if there is an assignment entry:
			say "([assignment entry])";
		otherwise:
			increment footnotes mentioned;
			choose row footnote in the Table of Footnotes;
			now assignment entry is footnotes mentioned;
			say "([assignment entry])".

[Now, in order to let the player view these footnotes, we'll need to parse numbers.]

Understand "footnote [number]" as looking up a footnote.

Looking up a footnote is an action applying to one number.

Check looking up a footnote:
	if the number understood > footnotes mentioned, say "You haven't seen any such footnote." instead;
	if the number understood < 1, say "Footnotes are numbered from 1."

Carry out looking up a footnote:
	choose row with assignment of number understood in the Table of Footnotes;
	say "([assignment entry]): [note entry]."

Test me with "footnote 1 / examine pie / footnote 2 / footnote 3".


