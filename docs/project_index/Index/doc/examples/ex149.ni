"Tense Boxing"

The Temporal Prism is a room. "A room of angled mirrors, in whose surfaces you can see what is now; what just was; what has always been. A final mirror is broken and its frame gapes blackly."

The mysterious box is in the Temporal Prism. It is an openable closed container.

To assess the box:
	if the box was not open, say "The box was not open.";
	if the box was open, say "The box was open.";
	if the box had not been open, say "The box had not been open.";
	if the box had been open, say "The box had been open.";
	if the box is not open, say "The box is not open.";
	if the box is open, say "The box is open.";
	if the box has not been open, say "The box has not been open.";
	if the box has been open, say "The box has been open."

Before opening the mysterious box:
	say "You are about to open the box.";
	assess the box.

Before closing the mysterious box:
	say "You are about to close the box.";
	assess the box.

After opening the mysterious box:
	say "You now open the box.";
	assess the box.

After closing the mysterious box:
	say "You now close the box.";
	assess the box.

[Note that "was..." and "was not..." and so on may describe conditions more complicated than simple properties: we could equally well ask "if the box has been in the sack", "if the box had been carried by the player", and so on.]

[The past ("if the box was...") and past perfect ("if the box had been...") are especially useful for cases where we want to report on an action after the state of the item has changed; so, for instance:]

After taking the mysterious box:
	if the box had not been carried by the player, say "You lift the mysterious box for the first time.";
	if the box had been carried by the player, say "You again pick up the mysterious box."

Test me with "open box / close box / open box / take box / drop box / take box".


