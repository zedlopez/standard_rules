"Bosch"

Use scoring.

The Garden of Excess is a room. The gilded lily is an edible thing in the Garden of Excess.

The Pathway to Desire is west of the Garden of Excess. The emerald leaf is in the Pathway.

Table of Valuable Actions
relevant action	point value	turn stamp
taking the emerald leaf	15	-1
eating the gilded lily	5	-1

[(And our list would presumably continue from there, in the full game.)]

The maximum score is 25.

After doing something:
	repeat through Table of Valuable Actions:
		if the current action is the relevant action entry and turn stamp entry is less than 0:
			now the turn stamp entry is the turn count;
			increase the score by the point value entry;
	continue the action.

Understand "full score" or "full" as requesting the complete score. Requesting the complete score is an action out of world.

Check requesting the complete score:
	if the score is 0, say "You have not yet achieved anything of note." instead.

Carry out requesting the complete score:
	say "So far you have received points for the following: [line break]";
	sort the Table of Valuable Actions in turn stamp order;
	repeat through the Table of Valuable Actions:
		if the turn stamp entry is greater than 0:
			say "[line break]  [relevant action entry]: [point value entry] points";
	say line break.

Test me with "eat lily / w / full score / get leaf / full".


