"Down in Oodville"

Section 1 - Method

Understand "[number]" as selecting.

Selecting is an action applying to one number.

Check selecting: [assuming we don't want to be able to transport from just anywhere]
	if the player is not on the transporter pad:
		say "You can transport only from the transporter pad. From other places than the transporter room, you can HOME to your base ship, but not leap sideways to other locations.";
		empty the transport options instead.

Check selecting:
	if the number understood is greater than the number of filled rows in the Table of Transport Options or the number understood is less than one:
		say "[The number understood] is not a valid option. ";
		list the transport options instead.

Carry out selecting:
	let N be the number understood; [not actually a necessary step, but it makes the next line easier to understand]
	choose row N in the Table of Transport Options;
	if the transport entry is a room:
		move the player to the transport entry;
	otherwise:
		say "*** BUG: Improperly filled table of transport options ***" [It should not be possible for this to occur, but we add an error message for it so that, if it ever does, we will know what is causing the programming error in our code]

To list the transport options:
	let N be 1;
	say "From here you could choose to go to: [line break]";
	repeat through the Table of Transport Options:
		say "  [N]: [transport entry][line break]";
		increment N.

To empty the transport options:
	repeat through the Table of Transport Options:
		blank out the whole row; [first we empty the table]

To load the transport options:
	repeat with interesting room running through visited rooms which are not the Transporter Room:
		choose a blank row in the Table of Transport Options;
		now the transport entry is the interesting room.

Table of Transport Options
transport
an object
with 3 blank rows. [In the current scenario, the number of blank rows need never be greater than the number of rooms in the game, minus the transport room itself.]


Understand "home" as homing. Homing is an action applying to nothing.

Check homing:
	if the player is in the Transporter Room:
		say "You're already here!" instead.

Carry out homing:
	move the player to the transporter room.

Section 2 - Scenario

The Transporter Room is a room.

Oodville is a visited room.

Midnight is a visited room. The Diamond City is west of Midnight.

The transporter pad is an enterable supporter in the Transporter Room. "The transporter pad in the middle of the floor is currently dull blue: powered but unoccupied."

After entering the transporter pad:
	say "The transporter beeps and glows amber as you step onto its surface. A moment later a hologram displays your options. [run paragraph on]";
	empty the transport options;
	load the transport options;
	list the transport options.

Test me with "get on pad / 0 / -1 / 8 / 2 / look / w / home / get on pad / get off pad / 3".


