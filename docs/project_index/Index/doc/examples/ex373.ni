"Cloves"

Manner is a kind of value. The manners are insouciantly, sheepishly, and defiantly.

[Now we have, automatically, a value called manner understood to be used whenever parsing manners, and we can use this even during the "after reading a command" stage, so:]

After reading a command:
	if the player's command includes "[manner]":
		cut the matched text;
	otherwise:
		say "But how, my dear boy, how? You simply can't do something without a pose. Thus far you have mastered doing things [list of manners].";
		reject the player's command.

When play begins:
	now the left hand status line is "Behaving [manner understood]";
	now the right hand status line is "[location]";
	now the manner understood is insouciantly.

The Poseur Club is a room. "Lady Mary is laid out on a sofa, her wrists bandaged importantly[if the manner understood is insouciantly] -- and she looks all the more depressed by your indifference to her state[end if]; Salvatore is at the gaming table, clutching his hair with both hands[if the manner understood is defiantly] -- though he looks up long enough to snarl in response to that expression of yours[end if]; Frackenbush is muttering lines from another of his works in progress, as though poetry has nearly made him mad[if the manner understood is sheepishly]. But he spares you a reassuring smile. He's not a bad fellow, Frackenbush[end if].

The usual people, in short."

Instead of doing something other than waiting or looking:
	say "Dear. No. That would smack of effort."

Instead of waiting when the manner understood is sheepishly:
	say "You scuff your foot against the ground for a moment, and allow a seemly blush to creep over your cheek. It's quite effective, you are sure, though you can't look up and see how it is going."

Instead of waiting when the manner understood is insouciantly:
	say "Thrusting your hands into your pockets, you whistle a jaunty tune.

'Do shut up,' says a Melancholy Poseur from over by the window."

Instead of waiting when the manner understood is defiantly:
	say "You raise your chin and give a pointed glance around the room as though to say that you are waiting for someone; you are unembarrassed about waiting for her; you have by no means been stood up; and the first person to comment will receive a poke in the eye."

Before looking when the manner understood is sheepishly:
	say "You gaze up from under your brows..."

Before looking when the manner understood is defiantly:
	say "You cast a withering gaze over the room."

Before looking when the manner understood is insouciantly:
	if turn count > 1,
		say "You turn an eye to your surroundings, looking faintly-- just faintly-- amused."

Test me with "wait / wait insouciantly / sheepishly look / defiantly look / look insouciantly".


