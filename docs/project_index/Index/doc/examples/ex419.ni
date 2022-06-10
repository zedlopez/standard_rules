 "Igpay Atinlay"

Armfay is a room.

After reading a command:
	let N be "[the player's command]";
	replace the regular expression "\b(<aeiou> )(\w*)" in N with "\1\2ay";
	replace the regular expression "\b(<bcdfghjklmnpqrstvwxz> )(\w*)" in N with "\2\1ay";
	say "[N][paragraph break]";
	reject the player's command.

Test me with "nix on the stupid".

