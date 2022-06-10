"The Fibonacci Sequence"

Pisa is a room. Leonardo Fibonacci is a man in Pisa. "The modest Italian mathematician, Leonardo Fibonacci (1170-1250), beams at you."

Sequencing is an action applying to one number. Understand "sequence [number]" as sequencing.

Instead of sequencing, say "You make a feeble attempt, sketching in the sand, but it goes nowhere. Leonardo is sympathetic. 'Often goes wrong for me, too, actually. I didn't even invent the thing - the ancient Indians knew about it first.'"

Persuasion rule for asking Leonardo to try sequencing: persuasion succeeds.

Report Leonardo sequencing:
	let N be the number understood;
	say "Leonardo scratches his head and makes self-deprecating remarks, before coming up with [the first N terms of the Fibonacci sequence]."

[ An array need not be fixed in length, as the following example shows:]

To decide what list of numbers is the first (F - a number) terms of the Fibonacci sequence:
	let the Fibonacci sequence be {1, 1};
	let N be 3;
	while N < F:
		let the last term be entry (N - 1) of the Fibonacci sequence;
		let the penultimate term be entry (N - 2) of the Fibonacci sequence;
		let the next term be the last term plus the penultimate term;
		add the next term to the Fibonacci sequence;
		increment N;
	decide on the Fibonacci sequence.

Test me with "sequence 20 / leonardo, sequence 20".


