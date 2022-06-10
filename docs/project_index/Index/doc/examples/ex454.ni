"Blink"

Atmosphere is a kind of value. The atmospheres are normal, melancholy, and creepy.

The current atmosphere is an atmosphere that varies.

To say by atmosphere -- ending say_one_of with marker I7_SOO_ATM:
	(- {-close-brace} -).

[Since we're operating within the untyped Inform 6, we can make use of the fact that kinds of value are (internally) just constants, enumerated in the same order in which they were originally defined. In other words, "normal" at the I6 level translates to 1, "melancholy" to 2, and "creepy" to 3; so we can return the value of the current atmosphere, and thereby select option 1, 2, or 3:]

Include (-
[ I7_SOO_ATM oldval count;
	if (count < (  current atmosphere  )) return count;
	return (  current atmosphere  ); ];
-)

[And that concludes the hard part. Now to test that it works:]

The Flat is a room. "A small [one of]but cozy[or]depressing[or]imprisoning[by atmosphere] flat. Outside the window, the sun is [one of][or][or]apparently [by atmosphere]shining and there is a brisk breeze through the leaves of the birch trees. [one of]It would be quite nice weather for a walk[or]The rest of the world apparently has no appreciation of what you suffer[or]It all looks deceptively normal[by atmosphere]."

Instead of waiting when the current atmosphere is normal:
	say "Everything stretches wide and flat for just a moment, as though all the world around you were painted on a thin rubber sheet that is being [italic type]stretched[roman type]. Then it snaps back into place, leaving your ears ringing. But that little glitch was enough to warn you. Someone is tampering with space-time again. Someone very close by.";
	now the current atmosphere is creepy.

Test me with "look / z / look".


