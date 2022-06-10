"Variety"

Section 1 - Descriptive Functionality

Describing relates various verbs to various action names. The verb to describe means the describing relation.

To take is a verb. To acquire is a verb. To get is a verb.

The verb take describes the taking action. The verb acquire describes the taking action. The verb get describes the taking action.

To drop is a verb. To put down is a verb. To discard is a verb. The verb drop describes the dropping action. The verb put down describes the dropping action. The verb discard describes the dropping action.

To sniff is a verb. To smell is a verb. The verb sniff describes the smelling action. The verb smell describes the smelling action.

To jump is a verb. To leap is a verb. To pirouette is a verb. The verb jump describes the jumping action. The verb leap describes the jumping action. The verb pirouette describes the jumping action.

After an actor doing something when the noun is nothing and a verb describes (the action name part of the current action) (this is the apply random verbs to describing nounless actions rule):
	say "[The actor] [verb rendering applied to a random verb that describes (the action name part of the current action)].";
	rule succeeds.

After an actor doing something to something when a verb describes (the action name part of the current action) (this is the apply random verbs to describing actions rule):
	say "[The actor] [verb rendering applied to a random verb that describes (the action name part of the current action)] [the noun].";
	rule succeeds.

To decide which text is the rendering of (V - verb) (this is verb rendering):
	decide on "[adapt V]".

Section 2 - Scenario

Lab is a room. The table is here. The bat and the ball are on the table.

Test me with "get ball / drop ball / get bat / drop bat / smell ball".


