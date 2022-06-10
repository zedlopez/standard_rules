"Baritone, Bass"

Getting Started is a room.

Gender is a kind of value. The genders are masculine, feminine, and unknown. Understand "male" or "man" or "M" as masculine. Understand "female" or "woman" or "F" as feminine.

A person has a gender. The gender of the player is unknown.

When play begins:
	now the command prompt is "Please choose a gender for your character. >".

After reading a command when the gender of the player is unknown:
	if the player's command includes "[gender]":
		now the gender of the player is the gender understood;
		if the gender of the player is unknown:
			say "This story requires a selection of male or female. [run paragraph on]";
			reject the player's command;
		if the gender of the player is masculine, now the player is male;
		if the gender of the player is feminine, now the player is female;
		say "[line break]Thank you. We now begin...";
		now the command prompt is ">";
		move the player to Sandy Beach;
		reject the player's command;
	otherwise:
		say "Sorry, we're not ready to go on yet. [run paragraph on]";
		reject the player's command.

Sandy Beach is a room.

Instead of examining the player when the player is female:
	say "Congratulations, you are a girl!"

Instead of examining the player when the player is male:
	say "Congratulations, you are a boy!"


