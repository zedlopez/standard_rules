"Bibliophilia"

The Graduate Lounge is a room. "Shabby sofas; plastic cups remaining from the afternoon's pre-lecture espresso; a collection of Xena and Hercules figurines posed for ironic effect. It's somewhat depressing at this hour, when everyone has gone home."

The Classics Reading Room is south of the Lounge. "Not as large a collection as the one in the Library, but it contains copies of everything really essential for reference."

Understand "examine [text]" as examining as a book when the player is in the Reading Room. Understand "look up [text]" as examining as a book when the player is in the Reading Room.

Examining as a book is an action applying to one topic.

Carry out examining as a book:
	say "You can't find any such text."

Instead of examining as a book a topic listed in the Table of Book Titles:
	say "[description entry][paragraph break]"

Table of Book Titles
topic	title	description
"Reading Greek Death" or "reading/greek/death" or "greek death"	"Reading Greek Death"	"A dense orange paperback treatise on the development of Greek eschatology."
"TAPA/Transactions/134-2"	"TAPA 134-2"	"Transactions of the American Philological Association from 2004."
"Oxford Classical Dictionary" or "OCD/dictionary/classical/oxford"	"Oxford Classical Dictionary"	"A hefty reference with short articles on everything from Greek meter to ancient cosmetics."
"Collected Dialogues of Plato" or "Plato/dialogues/hamilton/cairns"	"Collected Dialogues of Plato"	"All the Platonic dialogues -- some, admittedly, in rather tired translations -- but still a useful single volume, ed. Edith Hamilton and Huntington Cairns."
"Adobe Illustrator CS User Guide" or "user guide" or "adobe illustrator" or "adobe/illustrator/cs/user/guide"	"Adobe Illustrator CS User Guide"	"Hello, how did this get here? A suspiciously familiar name is scribbled inside the front cover..."

Some books are scenery in the Reading Room. Understand "copies" or "book" or "shelf" or "shelves" as the books. Instead of examining the books:
	choose a random row in the Table of Book Titles;
	say "You scan the shelves and notice, among others, a volume entitled [italic type][title entry][roman type]."

Test me with "south / examine ocd / examine books / examine books / examine plato / n / x hercules / s / x hercules".


