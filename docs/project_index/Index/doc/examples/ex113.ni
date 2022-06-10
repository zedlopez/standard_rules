"Don Pedro's Revenge"

The Deck of the Helene Marie is a room. "The two crews are embattled all around you, but your attention is reserved for your particular enemy: Don Pedro."

Table of Random Prompts
position	prompt
boxed	"So securely boxed-in that you can really only parry or thrust, you try to "
boxed	"Trapped between your barrels, you decide to "
perched	"Able to slice at your attackers but not to advance or retreat, you choose to "
perched	"Perched up here with the advantage of height (but little mobility), you attempt to "
free	"Out on the open deck with no impediments, free to advance or retreat, you decide to "

When play begins: reset the prompt.

Every turn: reset the prompt.

To reset the prompt:
	sort the Table of Random Prompts in random order;
	repeat through the Table of Random Prompts:
		if the position entry is the placement of the player:
			now the command prompt is prompt entry;
			stop.

After reading a command: say conditional paragraph break.

A placement is a kind of value. The placements are boxed, perched, free. The player has a placement. The player is free.

Understand "retreat" or "parry" as retreating. Retreating is an action applying to nothing.

Check retreating:
	if the player is perched, say "You can't move backward or parry very successfully from this position." instead.

Carry out retreating:
	now the player is boxed;
	say "You protect yourself, but end up wedged in between two barrels."

Understand "thrust" or "advance" as advancing. Advancing is an action applying to nothing.

Check advancing:
	if the player is perched, say "You can't move forward from here, only slash." instead.

Carry out advancing:
	now the player is free;
	say "You push forward aggressively, making your way to the open deck."

Instead of jumping:
	now the player is perched;
	say "You leap and swing yourself boldly up into the rigging, leaving your attackers beneath you."

Instead of jumping when the player is perched:
	now the player is free;
	say "You leap down from your position, into the middle of the deck."

Test me with "advance / jump / advance / retreat / jump / retreat / retreat / advance".


