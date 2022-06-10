 "Fido"

The Back Yard is a room.

A dog is an animal in Back Yard. The dog has some text called the nickname. The nickname of the dog is "nothing". Understand the nickname property as describing the dog.

Rule for printing the name of the dog when the nickname of the dog is not "nothing":
	say "[nickname of the dog]"

Naming it with is an action applying to one thing and one topic. Understand "name [something] [text]" as naming it with. Check naming it with: say "You can't name that."

Instead of naming the dog with "nothing":
	now the nickname of the dog is "nothing";
	now the dog is improper-named;
	say "You revoke your choice of dog-name."

Instead of naming the dog with something:
	let N be "[the topic understood]";
	replace the text "'" in N with "";
	now the nickname of the dog is "[N]";
	now the dog is proper-named;
	say "The dog is now known as [nickname of the dog]."

Test me with "name the dog Fido / name the dog Lawrence / look / x lawrence / name Lawrence nothing / look / x lawrence".

