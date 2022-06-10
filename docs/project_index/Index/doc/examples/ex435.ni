"Eyes, Fingers, Toes"

The Addams Wine Cellar is a room. It contains a closed lockable locked container called a safe.

The safe has a list of numbers called the current combination.

The safe has a list of numbers called the true combination. The true combination of the safe is {2, 10, 11}.

Understand "set [something] to [a number]" as setting it numerically to. Setting it numerically to is an action applying to one thing and one number.

Instead of examining the safe:
	if the number of entries in the current combination of the safe is 0,
		say "You haven't dialed the safe to any combination yet.";
	otherwise say "You have dialed the safe to [the current combination of the safe].".

Check setting something numerically to (this is the block setting numerically rule):
	say "[The noun] cannot be set."

Instead of setting the safe numerically to the number understood:
	truncate the current combination of the safe to the last 2 entries;
	add the number understood to the current combination of the safe;
	if the safe is locked and the current combination of the safe is the true combination of the safe:
		say "You dial [the number understood], and [the safe] gives a joyous CLICK.";
		now the safe is unlocked;
	otherwise if safe is unlocked and the safe is closed and the current combination of the safe is not the true combination of the safe:
		say "You spin the dial, and [the safe] snicks locked.";
		now the safe is locked;
	otherwise:
		say "You dial [the number understood] on the safe."

Test me with "x safe / set safe to 10 / x safe / set safe to 29 / x safe / set safe to 2 / x safe / set safe to 10 / x safe / set safe to 11 / open safe / set safe to 14 / close safe / set safe to 15 / open safe".

