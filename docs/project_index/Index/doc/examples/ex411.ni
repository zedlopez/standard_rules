"Escape from the Seraglio"

Section 1 - Special Announcement Rules

The number of takes this turn is a number that varies. Every turn: now the number of takes this turn is 0.

The friskily announce items from multiple object lists rule is listed instead of the announce items from multiple object lists rule in the action-processing rules.

This is the friskily announce items from multiple object lists rule:
	if taking:
		if the current item from the multiple object list is not nothing:
			increment the number of takes this turn;
			say "[if number of takes this turn is 1]First [otherwise if the number of takes this turn is 2]And then [otherwise if the number of takes this turn is 3]And I suppose also [otherwise if the number of takes this turn is 7]And on we wearily go with [otherwise if the number of takes this turn is 9]Oh, and not forgetting [otherwise]And [end if][the current item from the multiple object list]: [run paragraph on]";
	otherwise:
		if the current item from the multiple object list is not nothing, say "[current item from the multiple object list]: [run paragraph on]".

Rule for deciding whether all includes the person asked: it does not.
Rule for deciding whether all includes a person when taking: it does not.

Section 2 - The Scenario

The Palm Chamber is a room. Sarissa is a woman in the Palm Chamber.

The Palm Chamber contains a bottle of ink, a quill pen, a tangerine, a bunch of grapes, a length of silken rope, some perfume, a cake of incense, a fitted leather bodice, a sapphire anklet, an illustrated novel, a whip, and a heavy iron key.

A persuasion rule for asking Sarissa to try taking the key:
	say "Sarissa nervously demurs, knowing that it is forbidden.";
	persuasion fails.

A persuasion rule: persuasion succeeds.

Test me with "take all / drop all / sarissa, take all".

