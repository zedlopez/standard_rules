"Gopher-wood"

The Ark is a room. A bearded man is in the Ark.

Instead of examining the bearded man for the first time:
	now the printed name of the bearded man is "Japheth";
	now the bearded man is proper-named;
	say "You peer at him a bit more closely and realize that it's Japheth."

[Finally, we need to tell Inform to understand the man's name, but only when he's been introduced. For this purpose, we borrow from the chapter on Understanding:]

Understand "Japheth" as the bearded man when the bearded man is proper-named.

Test me with "x japheth / x man / look / x japheth".

