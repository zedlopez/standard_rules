"Quiz Show" by Mike Tarbert

Use scoring.

Answer mode is a truth state that varies.
Current state is a text that varies.

Guessing is an action applying to one topic.
Understand "[text]" as guessing when answer mode is true.

[Because of the "...when" part of this line, random text is only treated as an answer when a question is being asked.]

Check guessing (this is the default wrong answer rule):
	if the topic understood is not a topic listed in the Table of Dates of Statehood:
		say "Wrong!";
	now answer mode is false.

Carry out guessing a topic listed in the Table of Dates of Statehood:
	if state entry is the current state:
		say "Correct! ([comment entry], to be exact!)";
		increase the score by one;
	otherwise:
		say "Wrong!";
	now answer mode is false.

[This next rule allows a player to do something other than answer the question, but then makes him wait for another question before answering.]

Before doing anything other than guessing:
	if answer mode is true:
		say "(ignoring the question)[line break]";
	now answer mode is false.

Section 2 - Scenario

The Lab is a room.  Sam is a man in the lab.

Every turn when the player is in the lab:
	if a random chance of 3 in 5 succeeds:
		choose a random row in the Table of Dates of Statehood;
		say "Sam asks you, 'In what year was [state entry] admitted into the Union?'";
		now current state is state entry;
		now answer mode is true.

Table of Dates of Statehood
State	Topic	Comment
"Florida"	"1845"	"March 3rd"
"Delaware"	"1787"	"December 7th"
"Hawaii"	"1960"	"July 4th"

Test me with "1845 / z / z / 1787 / 1792 / z / 1845 / g".


