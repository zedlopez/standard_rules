"Bruneseau's Journey"

The Sewer Beneath St Denis is a room. "A narrow, stone-lined passageway, with only a little ledge to walk above the level of the refuse that flows down towards the Seine."

The candle is carried by the player. The description of the candle is "A candle, [if the candle has been lit]partially burnt[otherwise]still in pristine condition with untouched wick[end if]."

Instead of examining the lit candle, say "It burns with a pure heart."

The block burning rule is not listed in the check burning rules.

Instead of burning the lit candle:
	say "The candle is already lit."

Check burning:
	if the noun is not the candle, say "[The noun] cannot profitably be set on fire."

Carry out burning the candle:
	now the candle is lit.

Report burning:
	if the candle had been lit, say "You relight the candle.";
	otherwise say "You light the candle for the first time.".

Understand "blow out [something]" as blowing out. Understand "blow [something] out" as blowing out. Blowing out is an action applying to one thing.

Carry out blowing out the candle:
	now the candle is unlit.

Report blowing out:
	if the noun is the candle and the candle was lit, say "You blow out [the noun].";
	otherwise say "You blow on [the noun], to little effect."

Test me with "x candle / light candle / x candle / blow out candle / x candle".


