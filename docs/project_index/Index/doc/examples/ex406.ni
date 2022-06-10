"Feline Behavior"

The Kitchen is a room. The cat is an animal in the Kitchen. In the Kitchen is a bowl, a ball of wool, a newspaper. The bowl contains a quantity of cream.

The cat is wearing a silver collar. The description of the cat is "It is wearing [a list of things worn by the cat]."

The player carries a closed openable container called a bag. The bag contains catnip.

The cat behavior rules is a rulebook producing an object.

A cat behavior rule when the cat can touch the catnip:
	say "The cat frolics with the catnip until nothing remains of it.";
	rule succeeds with result catnip.

A cat behavior rule when the cat can touch the cream:
	say "The cat laps up the cream.";
	rule succeeds with result cream.

A cat behavior rule when the cat can touch the ball of wool:
	say "The cat makes the ball of wool into a useless tangle which must be discarded.";
	rule succeeds with result ball.

A cat behavior rule when the cat can touch the newspaper:
	say "The cat bats playfully at the newspaper until all the nasty boring articles are destroyed.";
	rule succeeds with result newspaper.

A cat behavior rule:
	say "The cat looks miffed at the lack of ready entertainment, and glares at you with yellow eyes as though wondering whether your pants leg is good for claw-sharpening.";
	rule fails.

Every turn:
	let the destroyed object be the object produced by the cat behavior rules;
	if the destroyed object is not nothing:
		now the destroyed object is nowhere;
		say "[line break]Good thing you have no use for [the destroyed object] yourself.[paragraph break]".

Test me with "z / z / open bag / z / z".


