"Escape"

Your Bedroom is a room. The bedroom window is a door. It is west of Your Bedroom and east of the Grassy Slope.

[Now we have a "bedroom window" object which can be entered. Now, to catch the case where the player types "LOOK THROUGH WINDOW":]

Instead of searching the window:
	say "Through the window, you make out [the other side of the window]."

[The other side of a door is always defined to be the room that we are not currently in when doing the check. When we are in the bedrooom, the other side will be the grassy slope, and vice versa. "Searching" is the action that occurs when the player attempts to LOOK THROUGH something. (To review what grammar gives rise to what actions, we can always consult the Actions portion of the Index.)]

[Next we want to cover the case where we climb through the window:]

Instead of climbing the window:
	try entering the window.

[And because "climb window" is understood but "climb THROUGH window" is not, we will have to borrow from the chapter on Understanding to add some new vocabulary to the game (and we'll add Jump too, while we're at it):]

Understand "climb through [something]" as climbing. Understand "jump through [something]" as climbing.

[Now the final piece: Inform will already keep the player from going through a closed window, but it will say "You can't, since the bedroom window is in the way." This is probably not ideal, so we can replace the instruction thus:]

Instead of going through the closed window:
	say "The window is shut: you'd break the glass."

Test me with "look through window / climb through window / open window / climb through window / look through window / close window / e / open window / e".

