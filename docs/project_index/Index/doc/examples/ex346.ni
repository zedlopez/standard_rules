"Rules of Attraction"

A metal form is a kind of thing. A magnet is a kind of metal form.

Every turn:
	repeat with item running through nonmagnetic metal forms which are not part of something:
		if item is in a container which contains a magnet (called attractor):
			say "[The item] sticks to [the attractor].";
			now the item is part of the attractor.

The horseshoe magnet is a magnet carried by the player. The nail is a metal form carried by the player. The Barn is a room. In the Barn is a bucket. In the bucket is a metal form called the iron hook.

Definition: a thing is nonmagnetic if it is not a magnet.

Rule for printing room description details of a magnet (called attractor): if something is part of the attractor, say " (stuck to which [is-are the list of things which are part of the attractor])".

After printing the name of a magnet (called attractor) while taking inventory:
	if something is part of the attractor, say " (stuck to which [is-are the list of things which are part of the attractor])".

Before taking a touchable thing which is part of a magnet (called attractor):
	move the noun to the holder of the attractor.

Test me with "i / put horseshoe in bucket / look / get horseshoe / i / drop horseshoe / i / look / get all / put all in bucket / i / x magnet / get nail / i".

