"History Lab"

Section 1 - Procedure

An object has an action called the last action.

Describing relates various verbs to various action names. The verb to describe means the describing relation.

To take is a verb. The verb take describes the taking action.
To drop is a verb. The verb drop describes the dropping action.
To look at is a verb. The verb look at describes the examining action.
To examine is a verb. The verb examine describes the examining action.

After an actor doing something to something:
	if a verb describes the action name part of the current action:
		now the indefinite article of the noun is "the";
		now the last action of the noun is the current action;
	continue the action.

After printing the name of something (called item):
	if the last action of the item is not waiting and the last action of the item is not the current action:
		let chosen action-name be the action name part of the last action of the item;
		let chosen actor be the actor part of the the last action of the item;
		if a verb describes the chosen action-name:
			let the chosen verb be a random verb that describes the chosen action-name;
			say " [if the chosen actor is the player][we][else][chosen actor][end if] [adapt chosen verb in past tense]";

Section 2 - Scenario

Lab is a room. It contains a box. The box contains a newspaper. Clark is a man in the Lab.

A persuasion rule:
	persuasion succeeds.

Test me with "x box / look / x newspaper / look / clark, x newspaper / clark, get box / clark, drop box / look / take box / i / smell box / i".


