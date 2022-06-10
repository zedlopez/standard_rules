"Sieve of Eratosthenes"

Alexandria is a room. Eratosthenes is a man in Alexandria. "The haughty Greek mathematician, Eratosthenes, glowers at you."

Sieving is an action applying to one number. Understand "sieve [number]" as sieving.

Instead of sieving, say "You make a feeble attempt, sketching in the sand, but it goes nowhere. Eratosthenes smirks. 'I expect your friends call you gamma, then?'"

Persuasion rule for asking Eratosthenes to try sieving: persuasion succeeds.

Report Eratosthenes sieving:
	let N be the number understood;
	let the composites be a list of numbers;
	let I be 2;
	while I times I is at most N:
		if I is not listed in the composites:
			let J be I times 2;
			while J is at most N:
				add J to the composites, if absent;
				increase J by I;
		increment I;
	sort the composites;
	let the primes be a list of numbers;
	repeat with P running from 2 to N:
		add P to the primes;
	remove the composites from the primes;
	say "Eratosthenes sketches lines in the sand with the air of much practice. 'The primes up to [N] are [the primes]. The composites are [the composites].'"

Test me with "sieve 10 / eratosthenes, sieve 100".


