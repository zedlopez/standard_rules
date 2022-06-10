"For Demonstration Purposes"

Section 1 - Procedure

Capability relates various people to various stored actions. The verb to be capable of means the capability relation.

Persuasion rule:
	let CA be the current action with no specific actor;
	if the person asked is capable of CA:
		persuasion succeeds;
	otherwise:
		say "[The person asked] look[s] confused. Maybe a demonstration would help.";
		persuasion fails.

The action requester is an object that varies. The action requester variable translates into I6 as "act_requester".

To decide which action is the current action with no specific actor:
	let old actor be the person asked;
	let old requester be the action requester;
	now the person asked is the player;
	now the action requester is nothing;
	let CA be the current action;
	now the person asked is the old actor;
	now the action requester is the old requester;
	decide on CA.

The learning by observation rule is listed after the report stage rule in the specific action-processing rules.

Definition: a person is other if he is not the player.

This is the learning by observation rule:
	repeat with the viewer running through other people who can see the player:
		if the player is the actor and viewer is not capable of the current action:
			say "[The viewer] watches your behavior with interest. Seems like [they] [are] learning.";
			now the viewer is capable of the current action.

Section 2 - Scenario

The Daily Planet is a room. Clark is here. He is a man.

When play begins:
	now Clark is capable of taking inventory.

Test me with "Clark, inventory / Clark, x me / x me / Clark, x me".

