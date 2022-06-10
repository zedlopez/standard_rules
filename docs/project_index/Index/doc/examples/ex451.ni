"Pink or Blue"

When play begins:
	say "Should your character be male or female? >";
	if men win, now the player is male;
	otherwise now the player is female;
	say paragraph break.

[Now a piece of Inform 6 code handles the unusual input. It's not necessary to understand this to use it, and the code should work for any question you'd like to ask the player. The first three words in quotation marks ('male', 'M', 'man'...) correspond to positive feedback; the later three words correspond to negative feedback. So "to decide whether men win" will be true if the player types one of the first three, and false if he types one of the last three.]

To decide whether men win:
	(- Question('male','M//','man','female','F//','woman') -)

Include (-

[ Question pos1 pos2 pos3 neg1 neg2 neg3 first_word_typed;
	while (true) {
		VM_ReadKeyboard(buffer, parse);
		wn = 1; first_word_typed = NextWordStopped();
		if (first_word_typed == pos1 or pos2 or pos3) rtrue;
		if (first_word_typed == neg1 or neg2 or neg3) rfalse;
		print "Please choose ", (address) pos1, " or ", (address) neg1, ". > ";
	}
];


-)

Instead of examining the player when the player is female:
	say "Congratulations, you are a girl!"

Instead of examining the player when the player is male:
	say "Congratulations, you are a boy!"

The Room of Self-Knowledge is a room. "Mirrors cover every available wall-surface of this hexagonal chamber, allowing you to examine yourself from all angles."

