"Garibaldi"

The security readout is a device. The description of the readout is "The screen is blank."

Instead of examining the switched on security readout:
	say "The screen reads: [fixed letter spacing]";
	say line break;
	repeat with item running through doors:
		say line break;
		say "  [item] ([front side of the item]/[back side of the item]): [if the item is locked]LOCKED[otherwise]UNLOCKED[end if]";
	say variable letter spacing;
	say paragraph break.

[It is more or less arbitrary which room winds up as the "front side" and which as the "back", but in this case it hardly matters.]

The player carries the security readout.

The Docking Bay is a room. The inner airlock is a door. It is north of the Docking Bay and south of the Zocalo. The inner airlock is lockable and unlocked.  The outer airlock is lockable and locked. It is a door. It is south of the Docking Bay and north of Space.

The quarantine seal is a door. It is west of the Zocalo and east of Medlab. Quarantine seal is locked.

The security pass unlocks the inner airlock. The player carries the security pass.

Test me with "x readout / turn on readout / x readout / lock inner airlock with security pass / x readout".

