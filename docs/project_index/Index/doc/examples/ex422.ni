"Northstar"

The Northstar Cafe is a room. "The Northstar is crammed with its usual brunch crowd, and you were lucky to get a table at all. You are now awaiting the arrival of your ricotta pancakes."

Josh is a man in The Northstar Cafe. "Josh is on his way past your table." The description of Josh is "He is a waiter here, but you also know him socially, so he tends to be more chatty than the other waiters." A persuasion rule: persuasion succeeds.

After reading a command:
	let N be "[the player's command]";
	replace the regular expression "\b(ask|tell|order) (. ?) to (. )" in N with "\2, \3";
	change the text of the player's command to N.

Test me with "ask Josh to take inventory / tell Josh to take inventory / order Josh to take inventory".


