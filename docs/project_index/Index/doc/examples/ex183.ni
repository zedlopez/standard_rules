"The Hang of Thursdays"

The Stage is a room. Rule for printing the name of the stage: say "[current weekday] [current time period]" instead.

A weekday is a kind of value. The weekdays are Saturday, Sunday, Monday, Tuesday, Wednesday, Thursday, Friday. The current weekday is a weekday that varies. The current weekday is Saturday.

A time period is a kind of value. The time periods are morning, afternoon, evening, night. The current time period is a time period that varies. The current time period is afternoon.

This is the new advance time rule:
	if the current time period is less than night:
		now the current time period is the time period after the current time period;
	otherwise:
		now the current time period is morning;
		now the current weekday is the weekday after the current weekday.

[Now we need to borrow from a later chapter to make these instructions apply to the passage of time:]

The new advance time rule is listed instead of the advance time rule in the turn sequence rules.

Test me with "z / z / z / z / z".

