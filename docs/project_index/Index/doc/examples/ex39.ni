"Van Helsing"

The Drawbridge is a room. North of the Drawbridge is the Immensely Enormous Entry Hall. West of the Entry Hall is the Vast Dining Area. North of the Vast Dining Area is the Colossal Kitchen. The Spooky Guano-filled Attic is above the Entry Hall.

Count Dracula is a man in the Attic.

[In the following condition, we could also have written "if the location of Count Dracula is not the location", because "location" by itself is always understood to be the player's location. But it seemed better for clarity to write it this way:]

Every turn:
	if the location of Count Dracula is not the location of the player:
		let the way be the best route from the location of Count Dracula to the location of the player, using doors;
		try Count Dracula going the way;
	otherwise:
		say "'Muhahaha,' says Count Dracula."

Test me with "z / z / n / w / e / u / z / d".

