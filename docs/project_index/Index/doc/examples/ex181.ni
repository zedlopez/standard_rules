"A Haughty Spirit"

To decide what number is the distance (first place - a room) rises above (second place - a room):
	let the total distance be the number of moves from the first place to the second place;
	if the total distance is less than 1, decide on 0;
	let count of down moves be 0;
	let count of up moves be 0;
	let next place be the first place;
	repeat with counter running from 1 to the total distance:
		let the way be the best route from the next place to the second place;
		if the way is down, let count of down moves be the count of down moves plus 1;
		if the way is up, let the count of up moves be the count of up moves plus 1;
		let next place be the room the way from next place;
	let the decision be the count of down moves minus the count of up moves;
	decide on the decision.

[Now we just have to create windows and some action rules for interacting with them...]

A window is a kind of thing. A window is always fixed in place. A window can be open or closed. A window is usually closed. A window can be openable or unopenable. A window is usually openable.

Understand "climb through [something]" as entering. Understand "jump through/out [something]" as entering.

Before entering a closed window:
	say "[The noun] would have to be opened first." instead.

Instead of entering a window:
	if the noun overlooks a room (called the far side):
		let fall be the distance the location rises above the far side;
		if fall is greater than 1, say "You'd break your neck." instead;
		say "You tumble into [the far side].";
		move the player to the far side;
	otherwise:
		say "There's nowhere to go."

Instead of examining a window:
	say "[The noun] [if the noun is open]opens over[otherwise]gives a view of[end if] [the list of rooms overlooked by the noun]."

[Here we must anticipate a little from the chapter on Relations, and provide ourselves with a way of keeping track of how windows and rooms relate to one another:]

Overlooking relates various windows to various rooms. The verb to overlook means the overlooking relation. The initial appearance of a window is usually "[The item described] overlooks [the list of rooms overlooked by the item described]."

The Square Keep is above the Winding Staircase. The Winding Staircase is above the Motte. A crown and a broken sword are in the Motte. The Bailey is west of the Motte.

The long window is in the Keep. The long window overlooks the Bailey and the Motte. The narrow window is in the Winding Staircase. The narrow window overlooks the Bailey.

Test me with "jump through window / open window / jump through window / d / x narrow window / open window / climb through window / e / up / down".


