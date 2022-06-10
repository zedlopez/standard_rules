"Circle Of Misery"

Luggage item is a kind of thing. The blue golf bag, the leopardskin suitcase, the green rucksack and the Lufthansa shoulder-bag are luggage items.

Heathrow Baggage Claim is a room. The carousel is a container in Heathrow. "The luggage carousel, a scaly rubbered ring, does for the roundabout what Heathrow Airport does for the dream of flight: that is, turns the purest magic into the essence of boredom, only with extra stress. [if the number of entries in the circle of misery is 0]For once it stands idle. Perhaps it's broken.[otherwise]The baggage approaching you now: [the circle of misery with indefinite articles]."

The circle of misery is a list of objects that varies.

When play begins:
	now all the luggage items are in the carousel;
	add the list of luggage items to the circle of misery.

[The list "circle of misery" is our ring, in which entry 1 is considered to be the position of whichever bag is currently frontmost. And here it goes, round and round:]

Every turn when the number of entries in the circle of misery is not 0:
	rotate the circle of misery;
	let the bag be entry 1 of the circle of misery;
	say "The carousel trundles on, bringing [a bag] to within reach."

After taking a luggage item (called the bag):
	remove the bag from the circle of misery, if present;
	say "Taken."

Before doing something with a luggage item (called the bag) which is in the carousel:
	if the bag is not entry 1 of the circle of misery, say "[The bag] is maddeningly out of range. You'll have to wait for it to come round." instead.

Instead of inserting something into the carousel, say "In recent years, the authorities have tended to frown upon depositing bags in random places at airports."

Test me with "get suitcase / get suitcase / get suitcase / get suitcase / look / get golf bag / look / get golf bag".

