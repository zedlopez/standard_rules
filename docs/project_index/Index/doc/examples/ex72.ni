"Fifty Times Fifty Ways"

The Beekeeper's Palace is a room. Wasp is a woman in the palace. Drone is a man in the palace.

A person can be fierce or mellow. Wasp is fierce. Drone is mellow. A person can be calm or angry. A person is usually calm. A person has some text called  insult. The insult of a person is usually "Grasshopper". The insult of Wasp is "Larva".

Instead of kissing someone:
	say "'[denial for the noun], [insult for the noun]! [boast]!'";

[Now to provide some meaning to these bracketed forms. We'll start with the easy one:]

To say boast:
	say "I have ferocious allies".

[This is a "to say" phrase; we will learn more about phrases in a later chapter, but for now it may be enough to observe that whatever we write after "to say..." becomes a valid substitution in bracketed speech. In this particular case there is no advantage to using the boast token rather than spelling the text out in the quotation, but we might in theory add further instructions to randomize the output, for instance.]

[To say phrases can be more complex, as well, since we can have them incorporate extra information:]

To say insult for (speaker - a person):
	if speaker is angry, say "[the insult of the noun]";
	otherwise say "small one".

[Here where we have (speaker - a person), we are leaving a slot which we can later fill in, madlibs-like, with any person we like. That is why we can write "insult for the noun": we are summoning the To say phrase and telling it to fill in the identity of the unknown speaker with the noun.]

[This differs from "insult of the noun" in the previous example; in that case, each person had his own insult property, and were merely printing that property out. Here we are actually telling Inform to calculate anew what the insult should be, and giving it some instructions about how to do that.]

[Our instructions can also get arbitrarily complex:]

To say denial for (speaker - a person):
	if speaker is calm:
		say "You must not";
	otherwise if speaker is female:
		say "Stand back";
	otherwise:
		say "You forget yourself".

Instead of attacking someone:
	now the noun is angry;
	say "'Get away, [insult]!'"

Test me with "kiss wasp / hit wasp / kiss wasp / kiss drone / hit drone / kiss drone".


