 "Apples"

Orchard is a room.

An apple is a kind of thing. Consumption is a kind of value. The consumptions are pristine and bitten. An apple has a consumption. The description of an apple is "It is [consumption]."

Understand the consumption property as describing an apple.

Before printing the name of an apple while asking which do you mean: say "[consumption] ". Before printing the plural name of an apple while asking which do you mean: say "[consumption] ".

The player carries three apples.

Instead of eating a pristine apple (called the fruit):
	say "You take a satisfying bite.";
	now the fruit is bitten.

Instead of eating a bitten apple (called the fruit):
	say "You consume the apple entirely.";
	now the fruit is nowhere.

[Inform will also separate the bitten from the pristine apples in inventory listings and room descriptions, even though it's not clear why; we can improve on that behavior thus:]

Before listing contents: group apples together.

Rule for grouping together an apple (called target):
	let source be the holder of the target;
	say "[number of apples held by the source in words] apple[s], some bitten".

Before printing the plural name of an apple (called target):
	let source be the holder of the target;
	if every apple held by the source is bitten, say "bitten ";
	if every apple held by the source is pristine, say "pristine ".

Test me with "i / eat apple / i / eat apple / pristine / i / eat apple / pristine / i".

