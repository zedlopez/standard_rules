"The Queen of Sheba"

Interrogative is a kind of value. The interrogatives are who, what, when, where, how, and why.

Current question is an interrogative that varies.

After asking someone about something: respond to the question. After answering someone that something: respond to the question.

After telling someone about something: say "You're here to ask questions and test Solomon's wisdom, not to give him a sample of your own."

Table of Wise Answers
topic	question type	reply
"rain/weather/clouds/cloud/rains"	what	"'Clouds are a disturbance made by the paths of birds,' Solomon replies. 'The air beaten by their wings becomes agitated, as when a river is stirred and the mud churns up.'"
"rain/weather/clouds/cloud/rains"	where	"'Weather is contained in a great silk bag which holds in the heavens,' replies Solomon."
"hunger/food/eating"	when	"'Sorry, are you getting hungry?' he says, and rings a bell to summon servants."
"hunger/food/eating"	why	"'Men were made to need food in order that they must farm and cook and dine together,' Solomon replies. 'Otherwise, they might live apart, each sufficient in himself. But no man can feed himself alone all through his life.'"
"Solomon/he/himself"	who	"'As you see,' he says, holding out his arms to each side."
"Solomon/he/himself"	what	"'I am an ordinary man,' he answers."

[One of the nice things about this system is that it only resets the "current question" when we get a new question word. For instance, this test will produce different replies to the question about Solomon himself, because the second time he is still in the mode of answering "what" questions:]

Test me with "ask solomon about himself / ask solomon what rain is / ask solomon about himself".

[If Solomon is to live up to his reputation at all, his wisdom table will have to be quite a bit longer - though one also would want to be careful, because forcing the game to cycle through a really immense table could be quite time-consuming. In fact, for the sake of this example, let's reward the player for managing to stay within the (narrow) range of Solomon's knowledge:]

The Hall of Almug Tree Pillars is a room. "The pillars of the room are made of almug tree, the ceiling made of silk and the floor of glass." Solomon is a man in the Hall of Almug Tree Pillars. Solomon has a number called wisdom. The wisdom of Solomon is 0.

Every turn:
	if the wisdom of Solomon is 3:
		say "Truly, Solomon has answered all your questions, and his wisdom is even as great as you had heard!";
		end the story saying "Your heart beats strangely fast".

When play begins, say "'Oh, you've arrived,' says Solomon."

[In a real game we'd need to be a great deal subtler. All the same, if we have a character of quite limited resources to present to the player, it's a good idea to give the player some incentive to stay on topic, ask questions the character can answer, and generally interact within the parameters we're prepared for.]

[Now, this last bit requires some trickery from later chapters, particularly those on Understanding and Activities, to pull the question words out of the player's command:]

After reading a command:
	if the player's command includes "[interrogative]", now the current question is the interrogative understood.

To respond to the question:
	repeat through the Table of Wise Answers:
		if the topic understood includes topic entry:
			if the current question is the question type entry:
				say "[reply entry][paragraph break]";
				increment the wisdom of Solomon;
				rule succeeds;
	say "Solomon looks blank, appalled by a question for which he was not prepared.";
	end the story saying "You have befuddled Solomon!"

Understand "ask [someone] [text]" as asking it about.


