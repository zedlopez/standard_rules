"Safari Guide"

Include Locksmith by Emily Short.

The Monkey House is a room. The African Grasslands Exhibit is north of the Monkey House. The bird door is north of the African Grasslands Exhibit and south of the Aviary. The Ostrich Enclosure is west of the Aviary. The bird door is a door. It is closed, lockable, and locked. The silver key is a passkey. It unlocks the bird door. The player carries the silver key.

Understand "go to [any room]" as going by name. Understand "[any room]" as going by name. Understand "[door]" as entering.

Going by name is an action applying to one thing.

Check going by name:
	if the noun is the location, say "You're already in [the location]." instead.

Carry out going by name:
	while the player is not in the noun:
		let heading be the best route from the location to the noun, using even locked doors;
		if heading is not a direction, say "You can't think how to get there from here." instead;
		let destination be the room heading from the location;
		say "(heading [heading])[command clarification break]";
		try going heading;
		if the player is not in the destination, rule fails.

Test me with "go to aviary / go to ostrich enclosure / african grasslands".


