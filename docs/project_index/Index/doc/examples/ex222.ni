 "Anteaters"

A book is a kind of thing. Understand "book" as a book. A book has a table name called the contents.

Report consulting a book about:
	say "You flip through [the noun], but find no reference to [the topic understood]." instead.

Instead of consulting a book about a topic listed in the contents of the noun:
	say "[reply entry][paragraph break]".

The Guide to Desert Fauna is a book. The contents of the Guide is the Table of Critters.

Table of Critters
topic	reply
"spines"	"You flip through the Guide for a while and eventually realise that spines are flora, not fauna."
"anteater colonies"	"The giant anteater, which grows to six feet in size and can kill a jaguar, is a solitary animal, found in many habitats, including grasslands, deciduous forests and rainforests. It does not form colonies. That's ants. They're actually quite easy to tell apart."

Death Valley is a room. The Guide is in the Valley.

The gizmo is in Death Valley. The gizmo has an action called idea. The description of the gizmo is "The gizmo is hard to describe, but it projects an idea of [idea]."

Before when the player carries the gizmo and the idea of the gizmo is waiting:
	say "[The gizmo] eagerly soaks up the whole idea of [the current action].";
	now the idea of the gizmo is the current action.

After dropping the gizmo:
	say "The percussion of the fall seems to have shaken the gizmo's idea loose! There's nothing for it now but [idea of the gizmo].";
	try the idea of the gizmo;
	now the idea of the gizmo is waiting.

Test me with "get guide / look up spines in guide / x gizmo / get gizmo / i / x gizmo / drop gizmo / get gizmo / look up anteater colonies in guide / x gizmo / drop gizmo".

