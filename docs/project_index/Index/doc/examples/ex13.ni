"Tamed"

The Center Ring is a room. The cage is in the Center Ring. A lion is an animal in the cage. The cage is enterable, openable, transparent, and closed.

[Notice that we made the cage transparent. Strictly speaking it is not made of transparent materials, but we can see into (or out of) a closed cage due to the gaps between the bars, so that from Inform's point of view a cage behaves much like a large sturdy glass box. (If we really wanted to make a distinction between, say, an airtight container and one with perforations, we could do so, but Inform does not model such nuances by default.) If a container is not transparent, we can see into and out of it only when it is open.]

[Supporters are a bit more straightforward because there is no circumstance in which they separate the player from the rest of the world:]

The pedestal is in the Center Ring. It is enterable.

[And in fact we can tell Inform that the player starts on the pedestal with this line:]

The player is on a pedestal.

[Now the player will begin there rather than just in the Center Ring.]

[This last bit is an entirely unnecessary bit of local color, but if we're going to keep getting into and out of the lion's cage, we ought to expect him to take notice:]

Every turn when the player is in the cage:
	if a random chance of 1 in 2 succeeds, say "The lion eyes you with obvious discontent.";
	otherwise say "Though the lion does not move, you are aware that it is watching you closely."

[Randomness is explained more completely in the chapter on Change, and every turn rules in the chapter on Time.]

[Finally, we might want a container whose interior is modeled as its own separate room: say, a magician's booth in which volunteers are made to disappear.]

The magician's booth is a container in Center Ring. "Off to one side is a magician's booth, used in disappearing acts. The exterior is covered with painted gilt stars." The booth is enterable, open, not openable, and fixed in place.

[Now we create our other location:]

Inside from the Center Ring is the Starry Vastness.

[...which handles the case of the player typing >IN. (We will not assume by default that he wants to get into the cage with the lion, this being obviously perilous.) But we also want to make sure that the player who types >ENTER BOOTH winds up in the same place, so we should add:]

Instead of entering the magician's booth: try going inside.

Test me with "get in cage / open cage / get in cage / z / close cage / out / open cage / get on pedestal / get off / look / enter booth / out".

