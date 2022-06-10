"Princess and the Pea"

The Topmost Turret is a room. A mattress is a kind of supporter. A mattress is always enterable. A mattress is portable.

A large mattress is a mattress in the Turret. A medium mattress is a mattress in the Turret. A small mattress is a mattress in the Turret.

Instead of sleeping when the player is on a mattress (called the bed):
	let the item be the bed;
	while the holder of the item is not a room:
		let the item be the holder of the item;
	say "You can still feel something very uncomfortable under [the item]."

Instead of sleeping:
	say "You can't sleep standing up!"

Instead of looking under a mattress, say "You scout around, but are unable to determine what's causing you this discomfort. If only your maid Winnie were here. She's very good at this."

Test me with "sleep / enter small / sleep / get up / get small / put small on medium / get on small / sleep / get up / g / get medium / put medium on large / get on small / look / sleep".

