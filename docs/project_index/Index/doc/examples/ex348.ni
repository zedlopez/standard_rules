"Hohmann Transfer"

The Western Hemisphere is a dark room. "The cloud mass covers much of the land on this side of the planet, and a particularly nasty storm is brewing off to the south."

The Eastern Hemisphere is west of the Western Hemisphere. The Eastern Hemisphere is east of the Western Hemisphere. The Eastern Hemisphere is north of the Western Hemisphere. The Eastern Hemisphere is south of the Western Hemisphere. "This side of the planet is more ocean than land, with only two continents worthy of the name, and a volcanic archipelago in the north seas."

Use full-length room descriptions.

Rule for printing the description of a dark room:
	say "It's night on this side of the planet, so you can make out only the glow of urbanized areas along the seacoasts."  instead.

Rule for printing the name of a dark room:
	say "Dark Side" instead.

[And now a few minor refinements so that we can see what happens when one room becomes dark and the other light:]

Carry out going:
	say "You fire the thrusters and loop around to the other side of the planet before settling into a new geosynchronous orbit. Six months and one minute later..."

The time of day is 4:55 PM.

At 5 PM:
	now the Eastern Hemisphere is dark;
	now the Western Hemisphere is lit.

Rule for printing the announcement of darkness:
	say "The planet abruptly spins itself over, exposing its cool underbelly to the sun."

Test me with "e / z / z / w / z / z / e".


