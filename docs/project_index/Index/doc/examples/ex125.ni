"Maze of Gloom"

A Bee Chamber is a kind of room. The printed name of a Bee Chamber is usually "Hexagonal Room". The description of a Bee Chamber is usually "Waxy, translucent walls surround you on six sides; the floor and ceiling are made of the same material, gently uneven. There are exits in every direction, cut into the faces or the corners."

Bee1, Bee2, Bee3, Bee4, Bee5, Bee6, Bee7, Bee8, Bee9, and Bee10 are Bee Chambers.

When play begins:
	now right hand status line is "[number of visited rooms]/[number of rooms]";
	repeat with place running through Bee Chambers:
		now a random Bee Chamber is mapped north of place;
		now a random Bee Chamber is mapped northwest of place;
		now a random Bee Chamber is mapped west of place;
		now a random Bee Chamber is mapped southwest of place;
		now a random Bee Chamber is mapped south of place;
		now a random Bee Chamber is mapped southeast of place;
		now a random Bee Chamber is mapped east of place;
		now a random Bee Chamber is mapped northeast of place;
		now a random Bee Chamber is mapped above place;
		now a random Bee Chamber is mapped below place;
		now a random Bee Chamber is mapped inside place;
		now a random Bee Chamber is mapped outside place.

Test me with "in / out / up / down / n / ne / nw / e / w / sw / se / s".

