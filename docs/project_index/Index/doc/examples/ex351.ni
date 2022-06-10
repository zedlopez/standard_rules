"Guided Tour"

When play begins:
	now left hand status line is "Nearby: [if a room is adjacent][the list of adjacent rooms][end if][if a room is adjacent and a door is visible] and [end if][if a door is visible][the list of visible doors][end if]";
	now right hand status line is "".

[Of course, we may not want to tell the player what glories are to be found in locations he hasn't yet explored.]

Rule for printing the name of an unvisited room (called the target) while constructing the status line:
	let aim be the best route from the location to the target;
	say "something [aim]".

[Even when we have seen a room, we might still want a reminder about how to get there:]

After printing the name of a visited room (called the target) while constructing the status line:
	let aim be the best route from the location to the target;
	say " ([aim])".

[We may also find that printing out full directions makes the status line unpleasantly crowded. Fortunately, it isn't hard to provide a set of abbreviations to use in this context:]

Rule for printing the name of a direction (called the aim) while constructing the status line:
	choose row with a heading of the aim in the Table of Abbreviation;
	say "[shortcut entry]".

Table of Abbreviation
heading	shortcut
north	"N"
northeast	"NE"
northwest	"NW"
east	"E"
southeast	"SE"
south	"S"
southwest	"SW"
west	"W"
up	"U"
down	"D"
inside	"in"
outside	"out"

[Everywhere else, the names of directions will still be printed out in full in the usual way. And now we give it a little map to work with:]

Dome is a room. North of Dome is North Chapel. South of the Dome is South Chapel. West of the Dome is Western End. Quiet Corner is northwest of the Dome, north of Western End, and west of North Chapel. Loud Corner is east of North Chapel, northeast of Dome, and north of Eastern End. Eastern End is north of Dim Corner and east of Dome. Dim Corner is southeast of Dome and east of South Chapel. Ruined Corner is southwest of Dome, west of South Chapel, and south of Western End.

The church door is east of Eastern End and west of the Courtyard. The church door is a door.

Test me with "n / w / s".


