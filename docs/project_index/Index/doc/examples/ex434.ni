 "Your Mother Doesn't Work Here"

A person has a list of stored actions called the current plan.

Every turn:
	repeat with culprit running through people who are not the player:
		if the number of entries in current plan of the culprit is greater than 0:
			let N be the number of entries in the current plan of the culprit;
			try entry N of the current plan of the culprit;
			remove entry N from the current plan of the culprit.

The Living Room is a room. It contains a somewhat muddy Persian rug. Your mother is a woman in the Living Room.

West of the Living Room is the Kitchen.

Instead of your mother rubbing the rug:
	say "Your mother scrubs the stained areas of the rug, muttering to herself."

Instead of taking something:
	say "Nah, Mom'll get that."

Report your mother taking something:
	say "Your mother picks up [the noun][one of], sighing deeply[or], jaw tight[or], with assorted comments on your manners[or]; to judge from her comments, she is also indulging in a pleasant fantasy about Swiss boarding schools[stopping]." instead.

When play begins:
	add mother going west to the current plan of mother;
	add mother rubbing the rug to the current plan of mother.

Every turn:
	if mother is not in the Living Room, end the story finally.

Carry out dropping something:
	add mother taking the noun to the current plan of mother.

The player carries some dirty socks, some dirty shoes, a dirty hat, a pair of dirty trousers, and a backpack.

Test me with "drop socks / z / drop shoes / drop hat / drop all / z / z".


