"Annoyotron Jr"

The Minivan is a room. The Open Road is outside from the Minivan. Pete is a man in the Minivan. "Pete [if the player has been in the Minivan for 3 turns]is starting to look bored[otherwise]is playing with his travel activity book[end if]."

Every turn:
	if the player has been in the Minivan for 5 turns, say "'Are we there [if saying no]now?'[otherwise]yet?' asks Pete.[end if]"

Instead of saying no:
	say "'Oh,' says Pete. There is a blessed, momentary silence."

Instead of going to the Open Road:
	say "You leap to your death.";
	end the story.

Test me with "z / z / look / g / g / g / no / z / z / z / no / z / out".

