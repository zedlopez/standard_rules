"Whither?"

The temporal vortex is an open door. It is west of Yesterday and east of Today.

The initial appearance of a door is usually "Nearby [an item described] leads [if the other side of the item described is visited][direction of the item described from the location] to [the other side][otherwise][direction of the item described from the location][end if]."

Direction-relevance relates a door (called X) to a direction (called Y) when the direction of X from the location is Y. The verb to be directionally-relevant to means the direction-relevance relation.

Understand "[something related by direction-relevance] door" as a door.

[As an added touch, we respond also to the case where the player postulates a door in some direction when there is no such thing at the moment:]

Rule for printing a parser error when the player's command includes "[non-door direction] door":
	say "There is no door in that direction." instead.

Definition: a direction (called direction D) is non-door:
	let the target be the room-or-door direction D from the location;
	if the target is a door:
		no;
	yes;

Test me with "examine west door / x east door / w / x w door / x e door / tie me to the west door / tie the west door to me / push the west door east / push the east door west".



