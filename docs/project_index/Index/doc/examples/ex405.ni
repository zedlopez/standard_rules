"Being Peter"

The Drawing Room is a room. "The company is assembled here for champagne. Most of it, anyway: Mary is on the phone to her babysitter, Roger is keeping her anxious company, and Carol doesn't drink. But everyone else."

Maggie is a woman in the Drawing Room.

The player wears a top hat.

Quizzing it about is an action applying to one thing and one visible thing. Understand "ask [someone] about [any thing]" as quizzing it about.

Instead of quizzing Maggie about something:
	follow the attitude rules;
	say "Everyone waits to see what the reaction will be: [outcome of the rulebook].";
	if rule succeeded, say "There is general relief.";
	otherwise say "Everyone is pointedly silent."

The attitude rules are a rulebook. The attitude rules have outcomes she stays calm (no outcome - default), she gets angry (failure), she has a stroke (failure), she is only mildly annoyed (success), and she is elated (success).

[Here we want Inform to consult every appropriate attitude rule until it gets to some answer; if an attitude rule does not provide a result, the default 'no outcome' will mean that we go on to the next rule, and so on.]

A subject is a kind of thing. income, love life, and children are subjects.

An attitude rule for quizzing Maggie about love life:
	she gets angry.

An attitude rule:
	if the player wears the top hat, she gets angry.

[Now, as we saw, the 'no outcome' result will never be returned and printed as Maggie's reaction, precisely because it is "no outcome". Therefore, we provide a final attitude rule which will give her a default response to all statements:]

The last attitude rule:
	she is only mildly annoyed.

Test me with "ask maggie about love / ask maggie about income / take off hat / ask maggie about income".


