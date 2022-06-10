"Slogar's Revenge"

Section 1 - Procedure

The amulet carrying rule substitutes for the carrying requirements rule when locking something with the Amulet of Tumblers.

The amulet carrying rule substitutes for the carrying requirements rule when unlocking something with the Amulet of Tumblers.

[We can now replace the usual behavior of the carrying requirements rule (to check whether the player is carrying something and, if not, to generate an implicit take) with a similar rule of our own; note that "if the player has the second noun" is a more compact way to write "if the player carries the second noun or the player wears the second noun":]

This is the amulet carrying rule:
	if the player has the second noun:
		continue the action;
	say "(first picking up the amulet)[command clarification break]";
	try silently taking the second noun;
	if the player is not carrying the second noun:
		stop the action;

Section 2 - Scenario

The Daunting Dungeon is a room.

West of the Daunting Dungeon is the Disturbing Door. The Disturbing Door is a door. West of the Disturbing Door is the Fallow Field.

The Disturbing Door is closed and locked.

The player wears the Amulet of Tumblers. The Amulet of Tumblers unlocks the Disturbing Door.

Test me with "unlock disturbing door with amulet / open door / west / remove amulet / close door / lock disturbing door with amulet / drop amulet / unlock disturbing door with amulet".


