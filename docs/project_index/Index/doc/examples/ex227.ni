"Transmutations"

Workshop is a room.

Transmutation relates things to each other in groups. The verb to become means the transmutation relation.

Definition: a thing is transmutable if it becomes more than one thing. [* It always becomes itself.]

A thing can be valuable. Something valuable called a bag of jewels is carried by the player. It becomes the bag of gunpowder and the bag of jelly beans.

A thing can be dangerous. The bag of gunpowder is a dangerous thing.

The bag of jelly beans is an edible thing.

The machine is fixed in place in the workshop.

The can't insert into what's not a container rule does nothing when inserting something into the machine.

Check inserting something which is not transmutable into the machine:
	instead say "You can't transmute that."

To decide which thing is new form of (obj - edible thing): decide on a random valuable thing which becomes obj.

To decide which thing is new form of (obj - dangerous thing): decide on a random edible thing which becomes obj.

To decide which thing is new form of (obj - valuable thing): decide on a random dangerous thing which becomes obj.

Carry out inserting something into the machine:
	now the noun is nowhere;
	now the player carries the new form of the noun.

Report inserting something edible into the machine:
	say "The machine clicks, whirrs, and spits out [a new form of the noun]. You're rich!";
	rule succeeds.

Report inserting something dangerous into the machine:
	say "The machine clicks, whirrs, and in a shower of flavor crystals, spits out [a new form of the noun].";
	rule succeeds.

Report inserting something valuable into the machine:
	say "The machine clicks, whirrs, and with a violent roar, spits out [a new form of the noun].";
	rule succeeds.

	Test me with "i / put jewels in machine / i / put gunpowder in machine / i / put beans in machine".


