"Rock Garden"

Section 1 - General Rules

Intervisibility relates rooms to each other in groups. The verb to be connected with means the intervisibility relation.

Definition: a room is inter-visible if it is connected with more than one room.

After deciding the scope of the player when the location is an inter-visible room:
	repeat with other place running through rooms which are connected with the location:
		unless the other place is the location, place the other place in scope.

Rule for reaching inside a room (called target) which is connected with the location:
	let way be the best route from the location to the target;
	if the way is not a direction:
		say "You can't get over to [the target] from here.";
		deny access;
	say "(first heading [way])[command clarification break]";
	try going way;
	if the player is in the target, allow access;
	otherwise deny access.

After looking when the location is an inter-visible room:
	repeat with other place running through rooms which are connected with the location:
		if the other place is not the location, describe locale for other place.

Section 2 - The Scenario

Rock Garden West is west of Rock Garden East. Rock Garden East contains a rake. Rock Garden West contains a bench and a maple leaf. The bench is an enterable supporter.

Rock Garden West is connected with Rock Garden East.

Test me with "get rake / drop rake / sit on bench / get rake".

