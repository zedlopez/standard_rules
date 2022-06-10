"Lugubrious Pete's Delicatessen"

The Supermarket is west of the Delicatessen Counter. Lugubrious Pete is in the Delicatessen. "Lugubrious Pete, dolefully slicing meats and cheeses, serves at the counter." Alice, Beth, Gemma, Delia, and Eliza are women in the Supermarket.

The deli queue is a list of objects that varies.

[Two processes compete here: one that fills the queue, the other which will empty it. The first process is the one which brings shoppers in to the counter, joining the back of the queue, which is where "add ... to ..." puts new entries by default:]

Every turn when a woman is in the Supermarket and a random chance of 2 in 3 succeeds (this is the customer arriving rule):
	let the customer be a random woman in the Supermarket;
	now the customer is in the Delicatessen;
	if the player is in the Supermarket, say "[The customer] walks into the Delicatessen.";
	if the player is in the Delicatessen, say "[The customer] comes in from the Supermarket, and [if the number of entries in the deli queue is 0]can't believe her luck. The counter is free![otherwise]resignedly queues behind [the deli queue].";
	add the customer to the deli queue.

[The competing process is the one which serves shoppers and thus gets rid of them again: unfortunately, it is slower. But Pete is fair if inefficient, and serves the customers in strict order of arrival. Each served customer is removed from the front of the list, and the others therefore all move up a place.]

Every turn when the number of entries in the deli queue is not 0 and a random chance of 1 in 3 succeeds (this is the customer being served rule):
	let the customer be entry 1 of the deli queue;
	if the player is in the Delicatessen, say "Pete gives a droopy expression as he serves [customer], who nevertheless brightens and leaves.";
	if the player is in the Supermarket, say "[customer] emerges cheerfully from the Delicatessen Counter, and goes about her regular shopping.";
	now the customer is in the Supermarket;
	remove entry 1 from the deli queue.

Instead of waiting in the Delicatessen when the number of entries in the deli queue is not 0, say "Time passes, for [deli queue] quite as much as for yourself."

Test me with "wait / wait / wait / east / wait / wait / wait / wait / wait".


