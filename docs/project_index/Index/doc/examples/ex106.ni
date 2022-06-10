"One Short Plank"

The East Jungle is a room. The plank bridge is west of the East Jungle and east of the West Jungle. The plank is an open unopenable door. "A precarious plank bridge extends [if the location is West Jungle]east[otherwise]west[end if] across the chasm." The description of the plank is "Extremely fragile and precarious."

Instead of going through the plank when the player is carrying something:
	say "You step gingerly across the plank, which bows under your weight. But your meagre possessions are the straw which breaks the camel's back!";
	end the story.

After going through the plank:
	say "You step gingerly across the plank, grateful that you're not burdened.";
	continue the action.

There is a feather in the East Jungle.

[But indeed, why stop there?]

The gigantic stone ball is a thing in the West Jungle. It is pushable between rooms.

Before going through the plank with something:
	say "Surely you jest." instead.

Test me with "w / e / w / push ball e / e / get feather / w".

