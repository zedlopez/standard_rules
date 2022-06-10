"Age of Steam"

The Station is a room. "Eynforme Halt is a raised platform fringed with cowslip: a whistle-stop with no more than a signal and a water-tank."

The Flying Scotsman is fixed in place. "The Flying Scotsman, fastest train in the world, is now at a dead standstill."

Train Stop is a scene. Train Stop begins when the player is in the Station for the third turn. Train Stop ends when the time since Train Stop began is 3 minutes.

When Train Stop begins:
	now the Flying Scotsman is in the Station;
	say "The Flying Scotsman pulls up at the platform, to a billow of steam and hammering."

When Train Stop ends:
	now the Flying Scotsman is nowhere;
	say "The Flying Scotsman inches away, with a squeal of released brakes, gathering speed invincibly until it disappears around the hill. All is abruptly still once more."

Instead of entering the Flying Scotsman, say "Alas, the [time when Train Stop began] arrival is only to take on water, not to set down or pick up."

Test me with "z / z / z / enter flying scotsman / z / z".

