"THE SECOND OLDEST PROBLEM"

The going action has a number called the dark terminus count.
Setting action variables for going:
	now the dark terminus count is 0;
	if in darkness, increment the dark terminus count.
The last carry out going rule:
	if in darkness, increment the dark terminus count;
	if the dark terminus count is 2, end the story saying "YOU FELL INTO A PIT AND BROKE EVERY BONE IN YOUR BODY!" instead.

[And now three early rooms to try this out.]

COBBLE CRAWL is a room. "YOU ARE CRAWLING OVER COBBLES IN A LOW PASSAGE. THERE IS A DIM LIGHT AT THE EAST END OF THE PASSAGE."

DEBRIS ROOM is west of COBBLE CRAWL. "YOU ARE IN A DEBRIS ROOM, FILLED WITH STUFF WASHED IN FROM THE SURFACE. A LOW WIDE PASSAGE WITH COBBLES BECOMES PLUGGED WITH MUD AND DEBRIS HERE,BUT AN AWKWARD CANYON LEADS UPWARD AND WEST."

AWKWARD CANYON is west of DEBRIS ROOM. "YOU ARE IN AN AWKWARD SLOPING EAST/WEST CANYON."

DEBRIS ROOM and AWKWARD CANYON are dark.

Rule for printing the name of a dark room: say "DARKNESS" instead.
Rule for printing the description of a dark room: say "IT IS NOW PITCH BLACK. IF YOU PROCEED YOU WILL LIKELY FALL INTO A PIT." instead.

Test me with "w / e / w / w".


