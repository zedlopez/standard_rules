"Unblinking"

Section 1 - Procedure

The light-meter is a privately-named scenery thing.

Definition: a room (called the target room) is light-filled:
	if the target room is lighted:
		yes;
	move the light-meter to the target room;
	let the answer be false;
	if the light-meter can see a lit thing:
		now the answer is true;
	now the light-meter is nowhere;
	decide on the answer.

[That done, we're free to use our best-route phrases to choose a particular route.]

Section 2 - Scenario

The Tomb of Angels is a room. "This ancient underground tomb is lightless but for a few shafts from the surface. Everywhere in the shadows are carved angels, their faces worn away by water and pollution, their wings little more than nubs."

The Upward Path is above the Tomb of Angels. It is dark. "The staircase switches back on itself many times as it ascends towards the Crash Site."

A container called the sarcophagus is in the Upward Path. It is closed and openable. "A sarcophagus rests in the niche here, [if open]the lid pushed aside[otherwise]the lid firmly in place[end if]."

The Crash Site is above the Upward Path. "The ceiling has wholly caved in here, and the belly of the spaceship above you is visible -- including the escape hatch."

A candle is a kind of thing. A candle is usually lit. The player carries four candles.

After looking when the location is not the Crash Site:
	if the best route from the location to the Crash Site through light-filled rooms is a direction (called next way):
		say "It looks like there's a safe, lit path [if the number of moves from the location to the Crash Site through light-filled rooms is 1]straight[otherwise]if you go[end if] [next way].";
	otherwise:
		say "It looks like there is no fully lit path from here to the Crash Site."

Test me with "up / drop candle / down / up / take the candle / open sarcophagus / put candle in sarcophagus / down / up / close sarcophagus / d".


