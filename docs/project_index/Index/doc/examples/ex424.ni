"Cave-troll" by JDC

Section 1 - The Mechanism

The last command is a text that varies.

The parser error flag is a truth state that varies. The parser error flag is false.

Rule for printing a parser error when the latest parser error is the only understood as far as error and the player's command matches the text "with":
	now the last command is the player's command;
	now the parser error flag is true;
	let n be "[the player's command]";
	replace the regular expression ".* with (.*)" in n with "with \1";
	say "(ignoring the unnecessary words '[n]')[line break]";
	replace the regular expression "with .*" in the last command with "".

Rule for reading a command when the parser error flag is true:
	now the parser error flag is false;
	change the text of the player's command to the last command.

Section 2 - The Scenario

The Cave is a room.

The troll is a man in the cave.

The player carries a sword.

The chest is a locked lockable container in the cave.

Test me with "attack troll with sword / unlock chest with sword / attack troll as a test".


