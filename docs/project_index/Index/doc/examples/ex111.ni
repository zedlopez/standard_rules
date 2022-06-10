"Y ask Y?"

A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined.

Taking inventory is acting confused. Looking is acting confused. Examining an examined thing is acting confused.

After acting confused for the sixth turn:
	say "(If you are feeling lost, try typing HELP for suggestions.)"

[And now we write a scenario which will, alas, rather encourage even a deft and clueful player to play as though he were hopelessly confused:]

The story headline is "or: Bad Author, No Biscuit".

The description of a thing is usually "Hm. [The item described] reminds you quite a lot of [a random visible thing which is not the item described]."

The Yurt is a room.

Food is a kind of thing. Food is always edible. In the Yurt are a yam and a dish of yakitori. The yam and the yakitori are food. The description of food is "Well, at least it's not [a random edible thing which is not the item described]."

In the Yurt is an animal called a yapok.

The player wears a yukata. The player carries a yataghan.

Every turn:
	if a random chance of 1 in 2 succeeds and something is examined:
		say "Your eye is attracted by some kind of surreptitious movement from [the random examined thing].";
	otherwise if the player carries something and a random chance of 1 in 3 succeeds:
		say "[The random thing carried by the player] tries to slip from your grasp."

Test me with "x yam / x yam / look / x yam / i / look / i / help / quit".

[And finally a little dollop of perversity from a later chapter:]

Check quitting the game:
	say "You're sure? ";
	if player consents, say "[line break]You were getting close to a breakthrough, you know.[line break]";
	otherwise stop the action.

Understand "help" as a mistake ("You're doing fine! Just keep at what you're doing now.").

