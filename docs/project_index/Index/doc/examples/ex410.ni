 "Endurance"

Work duration is a number that varies.

Every turn:
	now work duration is 0;
	increment the turn count;
	follow the time allotment rules;
	if work duration is 0, rule succeeds;
	increase the time of day by (work duration minutes - 1 minute).

The time allotment rules are a rulebook.

A time allotment rule for examining or looking:
	now work duration is 0;
	rule succeeds.

A time allotment rule for going:
	now work duration is 2;
	rule succeeds.

A time allotment rule for going up:
	now work duration is 5;
	rule succeeds.

A time allotment rule for waiting:
	now work duration is 10;
	rule succeeds.

The last time allotment rule:
	now work duration is 1.

When play begins: now the right hand status line is "[time of day]".

The Quai is a room. "An attractive park at the edge of the river Aude: here you can wander among palm trees, and watch cyclists go by on the bike path; in the water there are ducks. In the cafe to your north, patrons sip their pastis; and above you is the medieval walled city and its castle."

The Cafe is north of the Quai. "A charming collection of umbrella-shaded tables, from which one can watch the river and the walls of the city beyond. The noise of traffic is only a minor distraction."

The City is above the Quai.

After going to the City:
	say "You struggle uphill for some distance...";
	continue the action.

At 9:15 AM:
	say "The bells ring out from Place Carnot."

Test me with "z / n / s / u".



