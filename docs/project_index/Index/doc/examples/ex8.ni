"The Unbuttoned Elevator Affair"

UNCLE Headquarters is a room. "The steel nerve-center of the free world's battle against the Technological Hierarchy for the Removal of Undesirables and the Subjugation of Humanity. Being against technology, we have only a very simple elevator to the east."

Del Floria's Tailor Shop is a room. "Only trained anti-THRUSH agents recognise the booth in the east wall as a secret elevator."

The Secret Elevator is east of UNCLE Headquarters. The Secret Elevator is east of Del Floria's Tailor Shop.

After going to the Secret Elevator:
	say "The doors automatically close, there is a rush of motion, and they open again.";
	if UNCLE Headquarters is mapped west of the Secret Elevator, now Del Floria's Tailor Shop is mapped west of the Secret Elevator;
	otherwise now UNCLE Headquarters is mapped west of the Secret Elevator;
	continue the action.

Test me with "east / west / east / west".

