"Beekeeper's Apprentice"

Studying the vicinity is an action applying to nothing.

Report studying the vicinity:
	if the location does not contain something which is scenery:
		say "There's little of interest in the [location]." instead;
	repeat with point of interest running through scenery in the location:
		say "[point of interest]: [run paragraph on]";
		try examining the point of interest.

Understand "search" as studying the vicinity.

The Yard is a room.

The hive and the honey are scenery things in the Yard. The description of the hive is "The honeycombed hive is all around you, thrumming with life." The description of the honey is "Wax-sealed honey has been cached in many of the hexagonal nurseries."

Test me with "search".


