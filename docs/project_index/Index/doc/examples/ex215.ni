"Magneto's Revenge"

The School for Gifted Youngsters is a room. Kitty Pryde is a woman in the School for Gifted Youngsters. "Kitty Pryde waits for you to say why you summoned her out of class." The description is "You see nothing special about Kitty Pryde. But that is only because she has learned to conceal her mutant powers: in fact she has the alternative name Shadowcat, and the ability to phase through solid objects."

The glass box is a container in the School for Gifted Youngsters. It is closed, openable, and transparent. In the box is a quantity of poisonous gas. In the box is a thing called the message from Magneto.

Instead of examining the message when the player is not carrying the message:
	say "You'd need to be holding it before you could read it."

Instead of opening the glass box: say "You're deterred by the swirling bottle-green mist within."

Check someone taking the gas (this is the gaseous object rule): rule fails.

Unsuccessful attempt by someone taking the gas: say "The gas isn't something one can pick up in one's bare hands."

Every turn:
	if the player can touch the gas:
		say "The gas has reached your lungs!";
		end the story.

A rule for reaching inside something:
	if the person reaching is Kitty, allow access.

Persuasion rule for asking someone to try doing something: persuasion succeeds.

Test me with "get message / kitty, get message / open box / kitty, open box".


