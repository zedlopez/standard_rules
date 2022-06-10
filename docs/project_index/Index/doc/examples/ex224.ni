 "Celadon"

The Tea Room is a room. The player carries a black lacquer tray. The lacquer tray is portable. On the lacquer tray are a celadon teapot and a napkin.

Before dropping something:
	if the player does not carry the noun and the player encloses the noun:
		say "(first taking [the noun] from [the holder of the noun])[command clarification break]";
		silently try taking the noun;
		if the player does not carry the noun, stop the action.

Instead of taking the napkin:
	say "It seems to be stuck to the tray, possibly by an underlying wad of gum."

Test me with "i / drop teapot / i / look / drop teapot / drop napkin / i / drop tray".

