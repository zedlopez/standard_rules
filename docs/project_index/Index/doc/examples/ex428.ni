"Formicidae"

Use scoring.

Section 1 - Procedure

The magic rule is listed before the generate action rule in the turn sequence rules.

A thing has a number called dramatic potential.

This is the magic rule:
	let L be the multiple object list;
	if the number of entries in L is greater than 1:
		sort L in dramatic potential order;
		alter the multiple object list to L.

Section 2 - Scenario

The Foothills is a room. "The land has become hilly; though the soil is still mostly coarse yellow sand, clumps of grass are able to grow in the shadier places. Deep wagon ruts running from the southwest towards the mountains in the northeast show where generations of caravans have already passed."

The water flask, the tent peg, and the trading permit are things in Foothills.

The rock is a thing in Foothills. Before printing the name of the rock when the rock is not handled: say "innocent-looking ". The dramatic potential of the rock is 10.

The rusty nail is a thing in Foothills.

The ant colony is a fixed in place thing. "A busy group of ants are crawling to and fro in the unaccustomed sun." Rule for deciding whether all includes the ant colony while taking: it does not.

Instead of taking the rock when the rock is handled:
	say "It might still have a stray ant or two on it."

After taking the rock:
	now the rock is handled;
	move ant colony to the location;
	move the rock to the location;
	say "You reach for the rock and turn it over to reveal a thriving colony of flesh-eating ants. Needless to say, you drop the rock and jump back with a decidedly effeminate scream. They can probably hear you all the way back in the base camp.";
	decrease score by 2.

Test me with "get peg / drop peg / get all / get rock".


