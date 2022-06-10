"Complimentary Peanuts"

Instead of asking Aunt Martha to try doing something:
	repeat through Table of Aunt Martha's Commentary:
		if player's command includes topic entry:
			say "[commentary entry][paragraph break]";
			rule succeeds;
	say "'Hmmf,' says Aunt Martha."

[The topic understood is also a snippet, so that whenever one has been generated, we can treat it in the same way as "the player's command":]

Asking someone about something is speech.
Telling someone about something is speech.
Answering someone that something is speech.
Asking someone for something is speech.

Instead of speech when the noun is Aunt Martha:
	repeat through Table of Aunt Martha's commentary:
		if the topic understood includes topic entry:
			say "[commentary entry][paragraph break]";
			rule succeeds;
	say "'Hmmf,' says Aunt Martha."

[This is superior to checking "the player's command" because we do not want ASK MARTHA ABOUT FRENCH FRIES to trigger the "Martha" keyword, only the "french fries" keywords.]

The Empyrean Shuttle Bay is a room. "From here you have an excellent view of the colony world, which looks... well, it looks discouragingly orange. But terraforming is in progress."

Aunt Martha is a woman in the Empyrean Shuttle Bay. A gleaming shuttle and a stack of rations are in the Shuttle Bay. The shuttle is a vehicle. "Your shuttle awaits."

Table of Aunt Martha's Commentary
topic	commentary
"shuttle"	"'Shuttles! I hate shuttles,' Aunt Martha grumbles. 'Give me an airplane! AIRPLANE.'"
"airplane/airport"	"'Those were the days,' Aunt Martha agrees, plainly reliving the days when she wore a blue-and-white uniform and passed out packets of salted pretzels."
"rations"	"'Do you think there are any peanuts in there?' she asks in a wistful tone."

Test me with "martha, get in the shuttle / martha, for pity's sake, do you see an airplane around here? / martha, pass me the rations".


