"I Didn't Come All The Way From Great Portland Street"

The Paris Theatre is a room. An instrument is a kind of thing. The violin, the tuba, the xylophone and the triangle are instruments. The violin is inside the case. The tuba, the xylophone, the radish, the case, the bust of Nicholas Parsons, the purple felt hat and the triangle are in the Paris Theatre.

The Round is a scene. The Round begins when play begins. The Round ends when the turn count is 10.

The tally is a list of stored actions that varies.

When the Round begins:
	say "'And the subject on the card is... musical instruments. Will you carry out for us something to do with that, please, for ten turns starting - now!'"

When the Round ends:
	sort the tally;
	say "Phweeep![paragraph break]'So, when the whistle goes ten turns are up, you get a point for acting when the whistle blows, and in that round you entertained us by [the tally], and you also get a bonus point for keeping going until the whistle went.'";
	end the story finally.

To challenge for (infraction - text):
	say "Bzzzzt! 'And [one of]Clement Freud[or]Derek Nimmo[or]Kenneth Williams[or]Peter Jones[at random] has challenged.'[paragraph break]'[infraction]'[paragraph break]'Well, as it's your first time playing the game, and the audience was enjoying your contribution so much, I will disallow the challenge, you have [10 minus the turn count] turn[s] left on musical instruments, starting... now!"

Before doing something:
	if the current action is listed in the tally, challenge for "Repetition of [the current action]!" instead;
	otherwise add the current action to the tally;
	if waiting, challenge for "Hesitation!" instead;
	if not looking and not waiting and the noun is not an instrument and the second noun is not an instrument, challenge for "Deviation!" instead.

Test me with "look / wait / examine bust / take tuba / get triangle / hit xylophone / get tuba / examine tuba / get violin".


