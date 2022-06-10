 "Leopard-skin"

The Fur-Lined Maze is a room. "This seemingly endless sequence of rooms is decorated in a tasteful selection of exotic furs and gilded fixtures."

Clapping is an action applying to nothing. Understand "clap" as clapping.
Kweepaing is an action applying to nothing. Understand "kweepa" as kweepaing.

Carry out clapping:
	say "You clap."

Carry out kweepaing:
	say "You holler 'KWEEPA!' triumphantly."

The maze-sequence is a list of stored actions that varies.

When play begins:
	add jumping to the maze-sequence;
	add clapping to the maze-sequence;
	add kweepaing to the maze-sequence.

The attempted-sequence is a list of stored actions that varies.

Every turn when the player is in the Fur-Lined Maze:
	truncate the attempted-sequence to the last two entries;
	add the current action to the attempted-sequence;
	if the attempted-sequence is the maze-sequence:
		say "That does it! You are instantly transported from the maze!";
		end the story finally.

Test me with "hop / clap / clap / hop / kweepa / hop / clap / kweepa".

