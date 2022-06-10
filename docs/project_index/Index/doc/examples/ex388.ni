"Nine AM Appointment"

Waiting more is an action applying to one number.

Understand "wait [a time period]" or "wait for [a time period]" or "wait for a/an [a time period]" or "wait a/an [a time period]" as waiting more.

Carry out waiting more:
	let the target time be the time of day plus the time understood;
	decrease the target time by one minute;
	while the time of day is not the target time:
		follow the turn sequence rules.

[The one nuance here is that after our wait command occurs, the turn sequence rules will occur one more time. So we need to subtract one minute from the parsed time to make the turn end on the desired number of minutes.]

Report waiting more:
	say "It is now [time of day   1 minute]."

[And if we want to ensure that the player doesn't (accidentally or intentionally) put the interpreter through a really long loop, we could put an upper limit on his patience:]

Check waiting more:
	if the time understood is greater than one hour, say "You really haven't got that kind of patience." instead.

The Specialist's Office is a room. The secretary is a woman in the Office. Instead of asking the secretary about "[appointment]", say "'Hang on just five more minutes,' she says, in a distracted manner."

Understand "appointment" or "specialist" or "doctor" as "[appointment]".

At 9:45 AM: say "At [the time of day in words], secretary glances at you and gives a reassuring smile."

Test me with "ask secretary about appointment / wait five minutes / g / g / wait 61 minutes / wait for half an hour / wait for a quarter of an hour / wait for an hour".

