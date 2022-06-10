"Straw Boater"

Boathouse is a room. "A boathouse circa 1915, which -- though in poor repair -- still suggests Sunday afternoon jaunts taken by women in white gowns and men in straw hats."

North of the Boathouse is the Shallow Water. The description of Shallow Water is "Just south is the boathouse, and beyond it are trees and the marble terrace of the house above. The water deepens to the north."

North of Shallow Water is Deep Water. The description of Deep Water is "From here the boathouse has dwindled invisibly to the south, and you have a broad panorama of the shoreline, all the way down to the Skeleton Point Lighthouse in the southeast."

A vehicle has some text called the movement sound. The sailboat and the motorboat are vehicles in the Boathouse. The movement sound of the motorboat is "VRRRROOOMMMM..." Understand "boat" as the sailboat. Understand "boat" as the motorboat.

[Note that we haven't given the sailboat any movement sound at all.]

After going somewhere by a vehicle (called cart):
	if the movement sound of the cart is not "", say "[the movement sound of the cart][paragraph break]";
	continue the action.

Instead of exiting when the player is in a vehicle and the location is not the Boathouse:
	say "You're not dressed for a swim."

Instead of going somewhere when the player is not in a vehicle:
	say "You'd rather not try to make this journey by swimming alone."

Test me with "n / get in sailboat / n / get out / s / get in motorboat / n / n".

