"Zorb"

Section 1 - Procedure

The new can't push unpushable things rule is listed instead of the can't push unpushable things rule in the check pushing it to rules.

This is the new can't push unpushable things rule:
	if the noun is not pushable between rooms:
		say "[The noun] [are] not amenable to being pushed from place to place." instead.

The can't push vertically rule is not listed in any rulebook.

[And now to provide a scenario where the player can push something up and down a hillside. Most of the rest of the example is there for local color and to provide a way to demonstrate these rule adjustments:]

Section 2 - Scenario

The Steep Hill is a room. The Crest is above Steep Hill. The Valley is below Steep Hill.

The flat rock is a fixed in place thing in the Steep Hill.

The Zorb is a transparent open enterable container in the Steep Hill. "[if the player props the Zorb]The Zorb rests here, kept from further rolling by your support[otherwise]The Zorb is here[end if].". It is pushable between rooms. The description of the Zorb is "A giant plastic inflatable ball, like a hamster ball for humans[if someone is in the Zorb]. Inside [is-are list of people in the Zorb][end if]."

Lucy is a woman in the Zorb.

Carry out going with the Zorb when the Zorb contains Lucy:
	say "Lucy whoops delightedly as she rides along in the Zorb."

Every turn when the Zorb is not in the Valley and the player does not prop the Zorb:
	let next room be the room down from the location of the Zorb;
	if the player is not in the Zorb and the player can see the Zorb:
		say "The Zorb succumbs to gravity and rolls down toward [the next room].";
	move the Zorb to the next room;
	if the player is in the Zorb:
		say "The Zorb rolls you down the hill!";
		try looking;
	otherwise if the player can see the Zorb:
		say "The Zorb rolls ponderously but inevitably into the vicinity.";

Propping relates one person to one thing. The verb to prop means the propping relation.

Carry out going with the Zorb:
	now the player props the Zorb.

Before doing something when the action requires a touchable noun:
	if the noun is not the Zorb, now the player does not prop the Zorb.

Check waving hands when the player is propping something (called casualty):
	try the player releasing the casualty.

Carry out entering the Zorb:
	now the player does not prop the Zorb.

Understand "let go of [something]" or "let [something] go" or "release [something]" or "free [something]" as releasing. Releasing is an action applying to one thing.

Check releasing:
	if the player carries the noun:
		try dropping the noun instead.

Check releasing:
	if the player does not prop the noun:
		say "You are not supporting [the noun]." instead.

Carry out releasing:
	now the player does not prop the noun.

Report releasing:
	say "You let go of [the noun]."

Test me with "d / push zorb up / look / push zorb up / wave / d / d / push zorb up / release zorb / d / push zorb up / touch rock / push the flat rock south".


