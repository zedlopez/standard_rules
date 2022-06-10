"Relevant Relations"

Section 1 - Procedure

Rule for writing a paragraph about something (called item):
	now the current paragraph is { };
	say "[one of][regarding item]There [are] [an item] here[or][We] [can see] [an item] here[at random]. [run paragraph on]";
	follow the descriptive rules for the item;
	repeat with new item running through the current paragraph:
		now the prior named object is nothing;
		if new item is not the item:
			follow the descriptive rules for the new item;
	say paragraph break.

Rule for writing a paragraph about someone (called chosen person):
	now the current paragraph is { };
	say "[one of][regarding chosen person][The chosen person] [are] here[or][We] [can see] [a chosen person] here[at random]. [run paragraph on]";
	follow the descriptive rules for the chosen person;
	repeat with new item running through the current paragraph:
		now the prior named object is nothing;
		if new item is not the chosen person:
			follow the descriptive rules for the new item;
	say paragraph break.


The descriptive rules are an object-based rulebook.

Definition: a container is see-through:
	if it is transparent:
		yes;
	if it is open:
		yes;
	no.

A descriptive rule for a see-through container (called item) (this is the describe contents rule):
	describe the containment relation for item.

A descriptive rule for a supporter (called item):
	describe the support relation for item.

A descriptive rule for a person (called item):
	describe the wearing relation for the item.

A descriptive rule for a person (called item):
	describe the carrying relation for the item.

The current paragraph is a list of things that varies.

Before printing the name of something (called mentioned target) while writing a paragraph about something:
	add the mentioned target to the current paragraph, if absent.

To describe (R - a relation of objects) for (item - a thing):
	if a thing to which item relates by R is a thing:
		say "[The item with pronoun] [verb rendering applied to a random verb that means R] [the list of things to which item relates by R with indefinite articles]. [run paragraph on]"

To decide which text is the rendering of (V - verb) (this is verb rendering):
	decide on "[adapt V]".

To say (T - a thing) with pronoun:
	if T is the prior named object:
		say "[regarding T][They]";
	else:
		say "[The T]"

Section 2 - Scenario

The Space Elevator is a room. "Mercifully, there aren't any windows. The ability to see how far up you are would almost certainly make you ill."

The luggage rack is a supporter in the Space Elevator. The suitcase is a closed openable container on the luggage rack. The bouquet is on the luggage rack.

Clark is a man in the Space Elevator. Clark is carrying a box of cupcakes. Clark is wearing a t-shirt. The description of the box of cupcakes is "They're the latest confection from Red Velvet Planet, the Martian bakery."

Persuasion rule: persuasion succeeds.

[We can if we like then add alternate names for these relations that will be randomly swapped in some of the time. For instance:]

To sport is a verb. The verb to sport means the wearing relation.

To hold up is a verb. The verb to hold up means the support relation.

Test me with "clark, drop the box / look / clark, take the suitcase / look / clark, get bouquet".


