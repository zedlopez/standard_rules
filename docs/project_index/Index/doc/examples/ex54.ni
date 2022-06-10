"Real Adventurers Need No Help"

A permission is a kind of value. The permissions are allowed and denied.

Hint usage is a permission that varies. Hint usage is allowed.

[And under the right circumstances, we change hint usage to denied:]

Check asking for help for the first time:
	say "Sometimes the temptation to rely on hints becomes overwhelming, and you may prefer to turn off hints now. If you do so, your further requests for guidance will be unavailing. Turn off hints? >";
	if player consents:
		now hint usage is denied;
		say "[line break]Truly, a real adventurer does not need hints." instead.

[Then we can refer back to this value later to decide whether we want to display the hint menu or not:]

Check asking for help:
	if hint usage is denied, say "You have chosen to eschew hints in this game. Be strong! Persevere!" instead.

Asking for help is an action out of world. Understand "help" or "hint" or "hints" as asking for help.

The Realm of Terribly Unjust Puzzles is a room.

Carry out asking for help:
	say "Fine, since you're weak enough to ask: here is a complete walkthrough: GET EGG. PEEL EGG. SMELL EGG. DIVIDE YOLK INTO THREE PORTIONS. GIVE THE SMALLEST PORTION OF YOLK TO THE GOLDEN GOOSE. ASK THE GOOSE ABOUT WHETHER THE SWAN IS TO BE TRUSTED. GIVE THE LARGEST PORTION OF YOLK TO THE SWAN. DANCE CONGA. EAT MEDIUM PORTION. STAND ON HEAD. WEST."

Test me with "hint".


