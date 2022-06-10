"North by Northwest"

Section 1 - Procedure

The north-northwest is a direction. North-northwest has opposite south-southeast. Understand "n-nw" or "nnw" as north-northwest.

The north-northeast is a direction. North-northeast has opposite south-southwest. Understand "n-ne" or "nne" as north-northeast.

The south-southwest is a direction. South-southwest has opposite north-northeast. Understand "s-sw" or "ssw" as north-northwest.

The south-southeast is a direction. South-southeast has opposite north-northwest. Understand "s-se" or "sse" as south-southeast.

The west-northwest is a direction. West-northwest has opposite east-southeast. Understand "w-nw" or "wnw" as west-northwest.

The east-northeast is a direction. East-northeast has opposite west-southwest. Understand "e-ne" or "ene" as east-northeast.

The west-southwest is a direction. West-southwest has opposite east-northeast. Understand "w-sw" or "wsw" as west-northwest.

The east-southeast is a direction. East-southeast has opposite west-northwest. Understand "e-se" or "ese" as east-southeast.

[A complication arises because we reach the 9-character limit: Inform truncates the names of objects to nine characters before trying to understand them. To make matters worse, the hyphen (and other punctuation marks) count as two letters. So both north-northwest and north-northeast will get truncated to "north-no", and be indistinguishable when the player types them.]

[When we are compiling for Glulx, the limit is easily changed with a single line, setting the constant called DICT_WORD_SIZE. For instance, if we wanted to raise the limit to 15, we would simply write "Use DICT_WORD_SIZE of 15."]

[If we're compiling to the Z-machine, however, we'll have to resort to some manipulation of the player's command. The general solution is that when the player's name for an object is going to have to be longer than we can correctly read, we can substitute an unambiguous abbreviation for the thing the player typed. In this case, it will be simplest and most efficient always to condense the player's direction names to single letters, thus:]

After reading a command:
	let N be "[the player's command]";
	replace the text "north" in N with "n";
	replace the text "east" in N with "e";
	replace the text "south" in N with "s";
	replace the text "west" in N with "w";
	change the text of the player's command to N.

[For more on the use of text, see the Advanced Text chapter.]

Section 2 - Scenario

The Empty Field is north-northwest of the Deserted Road.

A crop-dusting plane is a backdrop. It is not scenery. It is in the Deserted Road and Empty Field. The initial appearance of the crop-dusting plane is "[one of]In the distance[or]Approaching faster and faster[or]Flying ominously low and directly towards you[or]Immediately overhead[or]Circling around for another approach[cycling] is a standard crop-dusting plane."

After looking:
	say "From here you can run to [the list of adjacent rooms]."

Rule for printing the name of a room (called the target) which is not the location while looking:
	let chosen direction be the best route from the location to the target;
	say "[chosen direction]".

Test me with "sse / north-northwest".


