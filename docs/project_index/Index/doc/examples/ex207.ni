"Barter Barter"

The block giving rule is not listed in the check giving it to rules.

A persuasion rule for asking people to try giving: persuasion succeeds.

The Trading Post is a room.

Meriwether Lewis is a man in the Trading Post. He carries a fluffy handmade quilt and a bag of beans. The beans are edible.

William Clark is a man in the Trading Post. He carries leather slippers, a journal, and a loaf of bread. The bread is edible. The slippers are wearable.

Instead of examining someone:
	say "[The noun] is carrying [the list of things carried by the noun]."

[And now we might want to implement a way to keep track of whether the recipient character wants what's being offered:]

Check someone trying giving something to someone (this is the sneering refusal rule):
	if the second noun dislikes the noun, stop the action.

Unsuccessful attempt by someone trying doing something:
	if the reason the action failed is the sneering refusal rule, say "'Would you care for [the noun]?' [the person asked] asks solicitously of [the second noun].

But [the second noun] refuses [the noun] disdainfully.";
	otherwise say "[The person asked] just appears bewildered by this improbable instruction."

Distaste relates one person to various things. The verb to dislike means the distaste relation.

Clark dislikes the beans. Lewis dislikes the bread.

[Since we've defined this as a relation, we could change what the characters like and dislike during the course of the game, freely; for instance, characters might grow hungry and suddenly like all the edible articles.]

Test me with "x lewis / x clark / clark, give the slippers to lewis / clark, give the bread to lewis".

