 "Rip Van Winkle"

A person can be asleep.

The Catskills is a room. "Here is a lovely, secluded fold in the mountains, far from civilization[if Rip Van Winkle is asleep]: as though to prove it, Rip Van Winkle is sleeping under a tree[end if]."

A tree is scenery in the Catskills.

Rip Van Winkle is a man in the Catskills. Rip Van Winkle is asleep.

Before listing nondescript items of the Catskills:
	if Rip Van Winkle is marked for listing:
		now Rip Van Winkle is not marked for listing;
		if Rip Van Winkle is not asleep,
			say "Rip Van Winkle stands here, looking mightily confused."

Instead of waiting:
	say "Rip Van Winkle wakes up with a snort.";
	now Rip Van Winkle is not asleep.

Test me with "look / z / look".

