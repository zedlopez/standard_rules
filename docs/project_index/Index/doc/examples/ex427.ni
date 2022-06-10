 "What Makes You Tick"

Understand "combine [something] with [something]" as combining it with. Combining it with is an action applying to two carried things. Understand the command "connect" as "combine".

Understand the command "attach" as something new. Understand "attach [something] to [something]" as combining it with.

The combining it with action has an object called the item built.

Setting action variables for combining something with something:
	let X be a list of objects;
	add the noun to X;
	add the second noun to X;
	sort X;
	repeat through the Table of Outcome Objects:
		let Y be the component list entry;
		sort Y;
		if X is Y:
			now the item built is the result entry.

Check combining it with:
	if the item built is nothing or the item built is not in limbo,
		say "You can't combine [the noun] and [the second noun] into anything useful." instead.

Carry out combining it with:
	move the item built to the holder of the noun;
	now the noun is nowhere;
	now the second noun is nowhere.

Report combining it with:
	say "You now have [an item built]."

Limbo is a container. Limbo contains a hookless fishing pole, a hooked line, and a complete fishing pole.

Streamside is a room. The player carries a stick, a wire hook, and a string.

Table of Outcome Objects
component list	result
{stick, string}	hookless fishing pole
{wire hook, string}	hooked line
{hooked line, stick}	complete fishing pole
{hookless fishing pole, wire hook}	complete fishing pole

Test me with "combine stick with string / i / combine pole with hook / i".


