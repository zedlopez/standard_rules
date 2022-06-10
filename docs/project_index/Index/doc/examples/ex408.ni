"Electrified"

A thing can be safe or electrified. A thing is usually safe.

The Open Field is a room. "At this end of the field is a wire fence separating farm country from the government testing grounds beyond." The wire fence is an electrified thing in Open Field. It is scenery. The description of the wire fence is "Built into the fence is [a list of things which are part of the fence]." The scary box is an electrified container. It is part of wire fence. In the scary box is an alluring prize.

The player carries a flashlight, a grappling hook, a very thick rubber glove, and a length of rope. The glove is wearable.

This is the electrocution-wisdom rule:
	if the player wears the very thick rubber glove, make no decision;
	if the action requires a touchable noun and the noun is electrified, say "You fear touching [the noun]." instead;
	if the action requires a touchable second noun and the second noun is electrified, say "You fear touching [the second noun]." instead.

The electrocution-wisdom rule is listed before the basic accessibility rule in the action-processing rules.

Before touching the scary box:
	say "You can't help noticing a bright red sticker on the surface of the box." [This rule will fire even if we are not wearing the glove, because Before rules occur before basic accessibility.]

Instead of opening the scary box:
	say "The scary box seems to be super-glued shut." [This one won't, because Instead rules occur after basic accessibility.]

Test me with "touch fence / touch box / open box / wear glove / open box".

