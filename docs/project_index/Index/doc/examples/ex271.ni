"Dubai"

The Burj al-Arab Lobby is a room. "The 202-suite Burj al-Arab - or Tower of the Arabs - stands 321 metres (1,060 feet) high, and floats on its own man-made island. It is shaped like the sail of a boat; just crossing the private bridge to reach this place set you back $55."

[(Since our budget did not run to visiting Burj al-Arab, the descriptions place implicit faith in the hotel's website.)]

The Assawan Spa is a room. "Treatment rooms, hydrotherapy baths, oriental massage, stand-up solarium, sauna, steam rooms and jacuzzi, two swimming pools, squash court, two fully equipped fitness studios and an aerobics floor. To the south is a shopping area, for those who do not find exercise adequately therapeutic."

The Shopping Area is south of Assawan Spa. "In a setting that would make a poet sigh, you may enjoy the services of (among others) Bulgari, Black Pearl Caviar, Albarajeel Carpet Shop, Abdul Samed Al Qurashi (amber and Arabic perfumes), Dianoor (jewellery), and the Commercial Bank of Dubai."

The Al Falak Ballroom is a room. "A palatial, two-tiered, domed ballroom crowned with a unique crystal chandelier."

Sahn Eddar is a room. "At the base of the world's tallest atrium, the Sahn Eddar restaurant offers light fine fare and Afternoon Tea. At the center, a 32-meter water column leaps toward the roof of the atrium."

Al Mahara is a room. "After the elevator, you must take a three-minute virtual submarine voyage to reach this seafood restaurant. A magnificent oval aquarium, full of sharks, is visible from every table."

Al Iwan is a room. "Middle-eastern food in an environment of dramatic black, red, and gold."

Al Muntaha is a room. "A top-floor restaurant with a magnificent view: the name means the ultimate or the highest, suitable for a place that stands at 200 metres above the Arabian Gulf. It offers modern European cuisine; and just off to the south is the Skyview Bar."

The Skyview Bar is south of Al Muntaha. "'A wonderful location for pre- and post dinner drinks,' claims the hotel's brochure, and certainly you can't fault the view."

The Juna Lounge is a room. "Two humidors that offer one of the largest selections of the finest Havana cigars in Dubai."

The Lift is a room. "This is not a mere elevator: it is an express panoramic lift, traveling six meters a second, and capable of taking you from lobby to the rooftop restaurant in an astonishingly short time. The illuminated number above the door says [current level of the Lift] - though you can make it move by pressing a numbered button."

The Presidential Suite is a room. "Astonishingly, this is not the most elaborate or expensive of suites; there is another, the Royal, upstairs of here."

The Royal Suite is a room. "The brochure described this as 'the last word in luxury,' and you have to admit that it is certainly the last word in [italic type]something[roman type]. A vast carpet of patterned red and gold stretches from you to the sofa; beyond which, in the distance, you make out several bedrooms and bathrooms outfitted in Carrera marble. There is also, of course, a private cinema."

Table of Floors
level	floor
0	Al Mahara
1	Burj al-Arab Lobby
2	Al Iwan
3	Juna Lounge
4	Sahn Eddar
15	Al Falak Ballroom
18	Assawan Spa
24	Presidential Suite
25 	Royal Suite
27	Al Muntaha

The elevator exterior is a backdrop. It is not scenery. The initial appearance of the elevator exterior is "You can enter the elevator here." It is in Generic Floor, Al Mahara, the Lobby, Al Iwan, Juna Lounge, Sahn Eddar, Al Falak, Assawan Spa, Presidential Suite, Royal Suite, and Al Muntaha.

Before entering the elevator exterior, try going inside instead.

Instead of going inside in the presence of the elevator exterior:
	if there is a level corresponding to a floor of the location in the Table of Floors:
		let the present level be the level corresponding to a floor of the location in the Table of Floors;
		now the current level of the Lift is the present level;
	otherwise:
		now the current level of the Lift is the current level of Generic Floor;
	move the player to the Lift.

The Lift has a number called current level. The current level of the Lift is 1. Instead of going up in the Lift: say "You'll have to select a specific floor; your options range from 0 to 27." Instead of going down in the Lift: try going up instead. The Lobby is outside from the Lift.

Before going outside in the Lift:
	if there is a floor corresponding to a level of the current level of the Lift in the Table of Floors:
		let the other place be the floor corresponding to a level of the current level of the Lift in the Table of Floors;
		move the player to the other place instead;
	otherwise:
		now the current level of the Generic Floor is the current level of the Lift;
		move the player to the Generic Floor instead.

The Generic Floor is a room. The Generic Floor has a number called current level. The printed name of the Generic Floor is "Floor [current level of the Generic Floor]". "A long hallway between suites, some of which run up to $15,000 a night."

Understand "push [number]" as pressing button. Understand "push [number] button" as pressing button. Understand "push button [number]" as pressing button. Pressing button is an action applying to one number.

Check pressing button:
	if the player is not in the Lift, say "You cannot control the express panoramic lift unless you are yourself inside." instead;
	if the number understood is the current level of the Lift, say "The lift pings politely and reopens its doors, since you are already on floor [number understood]." instead;
	if the number understood is greater than 27, say "There are only 27 floors." instead;
	if the number understood is less than 0, say "You cannot go below the ground floor in this elevator." instead.

Carry out pressing button:
	now the current level of the Lift is the number understood;
	say "You press button [the number understood]. The lift whirs into action and moves to the correct level."

Test me with "press 3 / in / press button 3 / look / out / in / press 27 / out / s / in / n / in / press 15 / out / in / press 18 / out / s / in / n / in / press 4 button / out".


