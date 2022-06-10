"Anchorite"

The Solitary Place is a room. "A glittering, shimmering desert without either locusts or honey." The pillar is an enterable supporter in the Solitary Place. "The broken pillar is short enough to climb and sit on." The description of the pillar is "Once it was a monument: a long frieze of battles and lion-hunts spirals up the side, in honor of an earthly king." The player is on the pillar.

Understand "get down" as exiting.

[This doesn't cover the case where the player just types "DOWN", and we don't want to preempt the normal operation of the GO action here. So instead of writing a new understand instruction, we might catch this one at the action-processing level:]

Instead of going down when the player is on a supporter:
	try exiting.

Test me with "down / enter pillar / get down / down / get down".

