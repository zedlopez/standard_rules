"The Crane's Leg"

Material is a kind of value. The materials are wood, glass, stone, cloth, paper, clay, and metal. A thing has a material.

A height is a kind of value. 3 feet 11 inches specifies a height. A thing has a height. Definition: a thing is tall if its height is 6 feet 0 inches or more. Definition: a thing is short if its height is 2 feet 0 inches or less.

[So far, we have generally dealt with cases where the property of a thing can be a number (such as 3), a value (such as brightness), or a unit (like height, here). It is also possible for a thing to have a property which names another thing, as in "The mother of the baby trout is the large trout" -- where "mother" is a property, and its value, in the case of the baby trout, is large trout. We would define such a property with a line such as "A fish has a thing called the mother."]

[In practice, though, this is a bit confusing as syntax; moreover, Inform has a much more powerful construct for talking about the ways in which one object relates to another object. A full discussion of this will have to wait for the chapter on Relations. For now, it is enough to say that we can do this:]

Imitation relates various things to one thing (called the ideal). The verb to imitate means the imitation relation.

[This will allow us to declare that some objects imitate other objects, like so:]

A chair is a kind of supporter. A chair is always enterable. A chair is usually wood. The height of a chair is usually 4 feet 0 inches. The ordinary chair is a chair. Every chair imitates the ordinary chair.

A table is a kind of supporter. A table is usually wood. The height of a table is usually 3 feet 8 inches. The ordinary table is a table. Every table imitates the ordinary table.

A rock is a kind of thing. A rock is usually stone. The ordinary rock is a rock. Every rock imitates the ordinary rock. The height of a rock is usually 0 feet 3 inches.

A jug is a kind of container. A jug is usually clay. The ordinary jug is a jug. Every jug imitates the ordinary jug. The height of a jug is usually 0 feet 8 inches.

[Now each of these types has one ideal representative which has the fundamental attributes of its kind: the ordinary chair is the most chairlike chair imaginable, the ordinary table is the epitome of tableness, and so on. We are also allowed to refer to "the ideal of the chair", thanks to the way we defined imitation. (Again, the relations chapter offers a much more detailed explanation of how relations may be defined.)]

The description of a thing is usually "[comparison with ideal][run paragraph on]".

To say comparison with ideal:
	let the sample be the ideal of the noun;
	if the sample is not a thing:
		say "Perfectly conforming to your expectations of its type.";
		rule succeeds;
	if the material of the noun is not the material of the sample:
		if the height of the noun is not the height of the sample:
			if the noun is shorter than the sample, say "Unusually short at [height of the noun], and made of [material of the noun].";
			otherwise say "Unusually tall at [height of the noun], and made of [material of the noun].";
		otherwise:
			say "Distinct mostly in being made of [material of the noun].";
	otherwise:
		if the height of the noun is not the height of the sample:
			if the noun is shorter than the sample, say "Unusually short at [height of the noun].";
			otherwise say "Unusually tall at [height of the noun].";
		otherwise:
			say "In every respect [a sample]."

The Pleasure Garden is a room. "At the riverbank, a pleasing garden, having many curving paths and one straight."

The low table is a table in the Pleasure Garden. The height of the low table is 2 feet 3 inches. On the low table is a metal rock called a gold nugget.

Test me with "x table / x nugget".


