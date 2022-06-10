"Night and Day"

The sun is a backdrop. It is everywhere. The description is "Currently out of sight."

Night is a recurring scene. Night begins when play begins. Night begins when Dusk ends. Night ends when the time since Night began is 3 minutes.

[Notice that our two conditions for the beginning of Night are not in conflict: it will be night-time when the game begins, and then night will also recur every time the Dusk scene ends.]

When Night begins:
	say "The sun falls below the horizon and the temperature drops abruptly to well below zero.";
	now the description of the sun is "Currently out of sight."

Dawn is a recurring scene. Dawn begins when Night ends. Dawn ends when the time since Dawn began is 1 minute.

When Dawn begins:
	say "The sun appears on the horizon.";
	now the description of the sun is "It is tiny and weak.".

Day is a recurring scene. Day begins when Dawn ends. Day ends when the time since Day began is 3 minutes.

When Day begins:
	say "The sun is now properly up."

Dusk is a recurring scene. Dusk begins when Day ends. Dusk ends when the time since Dusk began is 1 minute.

When Dusk begins:
	say "The sun has passed across the sky and is on the verge of setting."

Cratered Landscape is a room. "The ground here is [if Night is happening]dim silver, with the craters visible as darker splotches[otherwise]the color of dried blood; here and there it is also rippled by impact craters[end if]. The horizon curves visibly."

Test me with "z / z / z / look / x sun / z / z / z / z / z / z / z".


