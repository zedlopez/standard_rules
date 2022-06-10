"Lead Cuts Paper"

A weight is a kind of value. 10kg specifies a weight. Everything has a weight. A thing usually has weight 1kg.

A container has a weight called breaking strain. The breaking strain of a container is usually 50kg. Definition: A container is bursting if the total weight of things in it is greater than its breaking strain.

A lead pig, a feather, a silver coin and a paper bag are in a room called the Metallurgy Workshop. The paper bag is a container with breaking strain 2kg.  The lead pig has weight 50kg.

Every turn when a container (called the sack) held by someone visible (called the chump) is bursting:
	say "[The sack] splits and breaks under the weight! [if the player is the chump]You discard[otherwise][The chump] discards[end if] its ruined remains, looking miserably down at [the list of things in the sack] on the floor.";
	now all of the things in the sack are in the location;
	now the sack is nowhere.

Test me with "get bag / get feather / put feather in bag / get pig / put pig in bag / look".

