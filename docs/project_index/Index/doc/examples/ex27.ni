"Peugeot"

Include Rideable Vehicles by Graham Nelson.

The Lot is a room. The ten-speed bike is a rideable vehicle in the Lot.

[We make the ten-speed bike a rideable vehicle because we want to say that the player is on it rather than in it. Then our other room:]

Cambridge is east of the Lot.

[And now we borrow from the Actions chapter to prevent travel without the proper equipment:]

Instead of going to Cambridge when the player is not on the ten-speed bike:
	say "It's a long journey to Cambridge: you'll never make it on foot."

After going to Cambridge:
	say "You begin pedalling determinedly.";
	continue the action.

Test me with "e / get on ten-speed bike / e".

