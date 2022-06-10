 "The World of Charles S. Roberts"

Forward is a direction. Forward has opposite backward. Understand "f" as forward.
Backward is a direction. Backward has opposite forward. Understand "b" and "back" as backward.
Forward left is a direction. Forward left has opposite backward right. Understand "fl" as forward left.
Forward right is a direction. Forward right has opposite backward left. Understand "fr" as forward right.
Backward left is a direction. Backward left has opposite forward right. Understand "bl" as backward left.
Backward right is a direction. Backward right has opposite forward left. Understand "br" as backward right.

[Now to forbid the use of the compass directions:]

A direction can be hexagonal or squared-off. A direction is usually squared-off. Forward, backward, forward left, forward right, backward left and backward right are hexagonal.

Before going a squared-off direction, say "In this hexagonally-divided landscape, squared-off directions are not allowed." instead.

[A slight nuisance is that, with things as they are above, typing BACKWARD produces the response "Which do you mean, backward, backward left or backward right?" To avoid that silly question, we write:]

Does the player mean going backward: it is very likely. Does the player mean going forward: it is very likely.

[And now a clump of 37 hexes, in six columns of six or seven rooms each. There are many ingenious ways we could put this map together automatically, but instead we will take a deep breath and write:]

E1 is forward of E2. "Open farmland." E2 is forward of E3. "The edge of woods." E3 is forward of E4. "Deep woodland." E4 is forward of E5. "Deep woodland." E5 is forward of E6. "The rear edge of woods." E6 is forward of E7. "The start of a road leading forward right." E7 is a room. "Grassland."

F1 is forward of F2. "The edge of farmland." F2 is forward of F3. "The edge of woods." F3 is forward of F4. "Clearing in woods." F4 is forward of F5. "Deep woodland." F5 is forward of F6. "A road runs backward left to forward right." F6 is a room. "The edge of grassland."

G1 is forward of G2. "Grassland." G2 is forward of G3. "The edge of farmland." G3 is forward of G4. "A copse of trees." G4 is forward of G5. "The backward edge of woodland." G5 is forward of G6. "A bend in the road, from backward left to backward right." G6 is forward of G7. "Open farmland." G7 is a room. "Open farmland."

H1 is forward of H2. "Grassland, bordered by a hedge to the right." H2 is forward of H3. "The edge of farmland, with a hedge to forward right." H3 is forward of H4. "A copse of trees." H4 is forward of H5. "Open farmland." H5 is forward of H6. "A passing place on the road, which bends forward left to forward right." H6 is a room. "Open farmland."

I1 is forward of I2. "The end of a forward road, blocked by hedges on all sides except backward." I2 is forward of I3.  "A straight road runs forward to backward, with long hedges to left and right." I3 is forward of I4.  "A straight road runs forward to backward, alongside a long hedge to right." I4 is forward of I5.  "A straight road runs forward to backward, alongside a long hedge to right." I5 is forward of I6. "Where three roads, forward, backward left and backward right, meet. Forward right is a thick hedge." I6 is forward of I7. "Open farmland." I7 is a room. "Open farmland."

J1 is forward of J2. "Dense woodland, with a hedge to left." J2 is forward of J3. "Grassland, with a hedge to left." J3 is forward of J4. "The edge of farmland, with a hedge to left." J4 is a room. "Open farmland, with a long hedge blocking movement forward left, backward left or backward." J5 is forward of J6. "A road running forward left to backward right, alongside a hedge." J6 is a room. "Open farmland."

F1 is forward right of E2 and backward right of E1. F2 is forward right of E3 and backward right of E2. F3 is forward right of E4 and backward right of E3. F4 is forward right of E5 and backward right of E4. F5 is forward right of E6 and backward right of E5. F6 is forward right of E7 and backward right of E6.

G1 is forward right of F1. G2 is forward right of F2 and backward right of F1. G3 is forward right of F3 and backward right of F2. G4 is forward right of F4 and backward right of F3. G5 is forward right of F5 and backward right of F4. G6 is forward right of F6 and backward right of F5.

H1 is forward right of G2 and backward right of G1. H2 is forward right of G3 and backward right of G2. H3 is forward right of G4 and backward right of G3. H4 is forward right of G5 and backward right of G4. H5 is forward right of G6 and backward right of G5. H6 is forward right of G7 and backward right of G6.

I3 is forward right of H3 and backward right of H2. I4 is forward right of H4 and backward right of H3. I5 is forward right of H5 and backward right of H4. I6 is forward right of H6 and backward right of H5.

J5 is forward right of I6 and backward right of I5. J6 is forward right of I7 and backward right of I6.

[And now we have a hexagonally-gridded world. Route-finding will work; prepositional forms like "to be mapped backward left of" exist, just as they should; and in general these directions are just as good as the square ones. (The only thing which doesn't look good is the Index map, where Inform is just unable to draw a picture because it assumes a square grid. But that has no effect on play.)]

[The landscape is much easier to navigate with a little diagram:]

To say legend (D - direction):
	let destination hex be the room D from the location;
	if the destination hex is nothing, say "  ";
	otherwise say the destination hex.

Carry out looking:
	say "[fixed letter spacing]   \ [legend forward] /[line break][legend forward left]  ----  [legend forward right][line break]   /    \[line break]--<  [location]  >--[line break]   \    /[line break][legend backward left]  ----  [legend backward right][line break]   / [legend backward] \[variable letter spacing][line break]".

[And finally:]

The player is in I5.

Test me with "f / forward / backward left / bl / br / br / f".

