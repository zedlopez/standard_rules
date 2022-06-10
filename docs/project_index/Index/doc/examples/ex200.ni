"Removal"

The Pharmacy is a room. A desk and a trash can are in the Pharmacy. The pill-counter, a prescription, and a computer are on the desk. The computer is fixed in place. The pill-counter contains some Vicodin. The trash can contains an empty box.

The taking action has an object called previous locale (matched as "from").

[The previous locale could in theory be either a thing or a room, so we make it "an object" -- that is, the most generic possible kind, to which both things and rooms belong. Now we record what the previous locale is at the beginning of each taking action:]

Setting action variables for taking:
	now previous locale is the holder of the noun.

Report taking something from the location:
	say "You pick up [the noun] from the ground." instead.

Report taking something:
	say "You take [the noun] from [the previous locale]." instead.

Test me with "get all".

