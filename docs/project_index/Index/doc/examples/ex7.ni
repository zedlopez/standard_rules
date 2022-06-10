 "Starry Void"

The Center Ring is a room.

The magician's booth is a door. "[if the player is in Center Ring]A magician's booth stands in the corner, painted dark blue with glittering gold stars.[otherwise if the magician's booth is closed]A crack of light indicates the way back out to the center ring.[otherwise]The door stands open to the outside.[end if]".

[Here we've arranged for the booth to be described in the initial room description in different ways depending on where the player is when viewing it. We might like to do the same if the player takes a closer look:]

Instead of examining the magician's booth in the Center Ring:
	say "It is dark blue and glittering with gold stars. [if the booth is open]The door currently stands open[otherwise]It has been firmly shut[end if]."

Instead of examining the magician's booth in the Starry Void:
	say "The booth door is [if the magician's booth is open]wide open[otherwise]shut, admitting only a thin crack of light[end if]."

[And now we put it in place:]

The magician's booth is inside from Center Ring and outside from Starry Void.

[...and make sure that the booth-and-door object responds to all the names we have used for it in different places:]

Understand "door" or "of" or "the" or "light" or "crack" or "thin crack" as the booth.

Test me with "examine booth / open door of the booth / in / examine door / close door / look / examine crack of light".


