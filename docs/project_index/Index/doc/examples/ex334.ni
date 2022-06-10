 "Ant-Sensitive Sunglasses"

Part 1 - Procedure

[To add a new activity to an existing Inform rule, we need to do three things:]

[1) Define our new activity.]
[2) Give a basic rule that says what is supposed to happen when that activity occurs, as in "Rule for..."]
[3) Replace the existing rule in Inform's rulebooks with a new one that calls on our activity.]

[Here we do this with examining:]

Section 1 - Item Description

Printing the description of something is an activity.

[Now, by default, we want to print the description property; we just want the option to write some extra rules overriding that property. So we tell Inform that our most basic rule for printing the description of something is just to give that description text:]

Rule for printing the description of something (called item):
	if the description of the item is not "":
		say "[description of item][paragraph break]";
	otherwise:
		say "You see nothing special about [the item].".

[Next, we need the standard examining rule to look at our printing-the-description activity:]

The activity-based examining rule is listed instead of the standard examining rule in the carry out examining rules.

This is the activity-based examining rule:
	carry out the printing the description activity with the noun;
	rule succeeds.

[Now we do the same thing to room descriptions.]

Section 2 - Room Description

Printing the room-description of something is an activity.

Rule for printing the room-description of a room (called item):
	if the description of the item is not "":
		say "[description of item][paragraph break]";
	otherwise:
		do nothing instead.

The activity-based room description body text rule is listed instead of the room description body text rule in the carry out looking rules.

[Our replacement rule this time around is a little bit trickier just because the rule that we're replacing is a complicated one: describing a room already checks to see whether there's light to see by, whether the player has turned off room descriptions when he enters a room for the second time, and whether the player character is (say) inside a closed box he can't see out of.]

[But all of those details are re-copied from the standard rules, and the important thing is that, at the end, we again carry out our activity.]

This is the activity-based room description body text rule:
	if the visibility level count is 0:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated room descriptions and
			abbreviated form allowed is true and
			darkness witnessed is true,
			continue the action;
		begin the printing the description of a dark room activity;
		if handling the printing the description of a dark room activity,
			say "It is pitch dark, and you can't see a thing.";
		end the printing the description of a dark room activity;
	otherwise if the visibility ceiling is the location:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated room descriptions and abbreviated form
			allowed is true and the location is visited, continue the action;
		carry out the printing the room-description activity with the location.

Section 3 - Device Description

Showing action of something is an activity.

Rule for showing action of something (called item):
	if the item is switched on, say "[The item] is switched on.";
	otherwise say "[The item] is switched off."

The activity-based described devices rule is listed instead of the examine devices rule in the carry out examining rules.

This is the activity-based described devices rule:
	if the noun is a device:
		carry out the showing action activity with the noun;
		now examine text printed is true.

Report switching on something:
	say "You flip a switch. ";
	carry out the showing action activity with the noun instead.

Part 2 - Scenario

The Kitchen is a room. "A small kitchen tucked into a corner of the vacation house. There is storage space for five or six cups, a sink, a two-ring stove; nothing else to speak of."

The microwave is a device in the Kitchen.

South of the Kitchen is the Living Area. The description of the Living area is "A whitewashed living/dining/reclining area in what used to be a shepherd's stone hut, but now costs vacationers 600 euros a week. It offers no mod cons, only a straight view of the Mediterranean and a wobbly writing table."

Rule for printing the room-description of a room when the player wears the sunglasses:
	say "The walls look like they're covered with ants. Just a coincidence, I'm sure[antsy]."

Rule for printing the room-description of the Kitchen when the player wears the sunglasses:
	say "Are ants coming out of the sink? No, probably not[antsy]."

Rule for printing the description of something (called the item) when the player wears the sunglasses:
	say "[The item] [are] [one of]ant-colored[or]ant-legged[or]covered in ants[at random][antsy]."

Rule for showing action of the microwave:
	say "The microwave hums meaningfully to itself."

Rule for showing action of the microwave when the player wears the sunglasses:
	say "The microwave hums as though inhabited by a billion ants[antsy]."

The player carries sunglasses of freakiness and an apple. The apple is edible. The sunglasses are wearable.

ant-paranoia is a number that varies.

To say antsy:
	increase ant-paranoia by 1;

Every turn:
	if the ant-paranoia is greater than 3:
		say "Augh! AUUUGH! GET THEM OFF--";
		end the story saying "You have lost your mind."

Test me with "look / turn on microwave / turn off microwave / x apple / x sunglasses / s / wear sunglasses / look / x apple / n / turn on microwave".

