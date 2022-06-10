"Claims Adjustment"

A photograph is a kind of thing. 36 photographs are in the film roll.

Appearance relates one thing to various photographs. The verb to be shown by means the appearance relation.

The description of a photograph is usually "It shows [a random thing which is shown by the item described]."

Understand "of [something related by reversed appearance]" as a photograph.

[This allows the player to refer to any photograph by its subject: useful if we have a large number of them.]

[Now we create an action to let the player use the camera and generate these photograph objects:]

The player carries a cheap instant camera.

Understand "photograph [something] with [camera]" as photographing. Understand "photograph [something] with [something preferably held]" as photographing. Photographing is an action applying to one visible thing and one carried thing, requiring light.

The photographing action has an object called the selected film.

Setting action variables for photographing:
	let N be a random photograph in the film roll;
	now the selected film is N.

Check photographing:
	if the second noun is not the camera, say "You need a camera for that purpose." instead.

Check photographing:
	if the noun is the camera, say "Sadly impossible." instead.

Check photographing:
	if the selected film is nothing, say "You're out of film." instead.

Carry out photographing:
	now the noun is shown by the selected film;
	move the selected film to the player.

Report photographing:
	say "Your camera instantly spits out [a selected film]."

[Now we use two activities from the Activities chapter to describe the photographs to the player more elegantly:]

After printing the name of a photograph (called target):
	say " of [a random thing which is shown by the target]".

After printing the plural name of a photograph (called target):
	let N be the holder of the target;
	say " of [a list of things which are shown by photographs which are held by N]";
	if the number of things which are shown by photographs which are held by N is greater than one, say " (variously)".

[And finally we provide a brief scenario to give the player something to take pictures of:]

The Treasure Room is a room. "Despite the fancy name, this is no more than a closet -- albeit a closet with its own special circuit on the house alarm."

The Treasure Room contains a small Degas, a Ming vase, and a collection of South African krugerrands. The player is carrying insurance forms, a first-class stamp, and a security envelope.

The description of the forms is "Completely filled out in black ink in block letters: now all you need to do is attach photographic evidence of the objects you wish to insure."

Test me with "photograph degas / i / photograph degas / i / x photograph of degas / photograph me / x photograph of me / i / photograph vase / photograph camera / photograph collection / g / i / test more".

Test more with "x photograph of collection / x photograph of krugerrands / x photograph of collection of south african krugerrands / photograph photograph of degas / x photograph of photograph of degas".

