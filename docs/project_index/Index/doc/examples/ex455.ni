"Uncommon Ground"

The Mud Village is a room. "You stand at the center of a [show to yourself]quaint[to Lolita]thrilling[to everyone else]squalid[end show] mud village."

Leforge is a man in the Mud Village. Lolita is a woman in the Mud Village.

Instead of waiting:
	if the player is Lolita, now the player is Leforge;
	if the player is yourself, now the player is Lolita;
	say "You jump bodies. Whoops!"

To say show to (N - a person) -- beginning say_seen_by:
	(-
		switch(player)
		{-open-brace}
		{N}:
	-).

To say to (N - a person) -- continuing say_seen_by:
	(-
		{N}:
	-).

To say to everyone else -- continuing say_seen_by:
	(-
		default:
	-)

To say end show -- ending say_seen_by:
	(-
		{-close-brace}
	-)

Test me with "look / z / look / z / look".

