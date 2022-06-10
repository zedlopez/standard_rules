"Shipping Trunk"

A chest is a kind of container. A chest is always openable. A lid is a kind of supporter. A lid is part of every chest.

Before opening a chest when something (called the obstruction) is on a lid which is part of the noun:
	say "Better remove [the obstruction]." instead.

A thing can be innocent or smelly.

The Storage Unit is a room. The shipping trunk is a closed chest in the Storage Unit. The trunk contains some garlic, a loaf of moldy sourdough, a mildewy bathtowel, a pair of unwashed socks, two dead trout, and a box of baking powder. The garlic, trout, sourdough, bathtowel, and socks are smelly. The baking powder is innocent.

The shipping trunk's lid supports a small card. The description of the small card is "'Please, please do not open this trunk.'"

After opening the trunk:
	if the trunk had been open:
		say "You steel yourself...";
		continue the action;
	otherwise:
		say "There roils up from inside an indescribable funk, which, when you can see straight, you have no trouble attributing to the presence of [a list of smelly things in the trunk]. You also note [a list of innocent things in the trunk] in the corner.".

[And now, with that preparation:]

Before printing the name of the baking powder when the powder is in a container which contains a smelly thing: say "completely ineffective ".

Test me with "open trunk / examine card / get card / open trunk / get powder / inventory".

