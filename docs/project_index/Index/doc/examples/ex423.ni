 "Mr. Burns' Repast"

Wharf is a room.

There is an unknown fish in the Wharf. The unknown fish has some a text called the supposed name. The description of the unknown fish is "The victim of heavy mutagens, this thing is not really recognizable as any species you know.".

Fish variety is a kind of value. The fish varieties are salmon, albacore, mackerel.

Rule for printing the name of the unknown fish:
	if the supposed name of the unknown fish is "", say the printed name of the unknown fish;
	otherwise say the supposed name of the unknown fish.

After reading a command:
	if the unknown fish is visible and player's command matches the regular expression "\b\w fish":
		let N be "[the player's command]";
		replace the regular expression ".*(?=\b\w fish)" in N with "";
		now N is "[N](?)";
		now the supposed name of the unknown fish is N;
		respond with doubt;
		reject the player's command;
	otherwise if the unknown fish is visible and the player's command includes "[fish variety]":
		now supposed name of the fish is "[fish variety understood](?)";
		respond with doubt;
		reject the player's command.

To respond with doubt:
	say "You're not [italic type]sure[roman type] you're seeing any such thing."

Test me with "get swordfish / look / touch monkfish / look / listen to tunafish / x fish / x salmon / look".

