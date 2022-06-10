"Proposal"

The story genre is "A Worked Example about Yes/No Questions".

Section 1 - Asking a Modal Yes/No Question

When play begins:
	say "Do you like Mr Spruce? ";
	if player consents, now Spruce is handsome;
	otherwise now Spruce is ugly;
	say paragraph break.

Section 2 - Mr Spruce's Non-Modal Question

Use full-length room descriptions.

The Conservatory is a room. "You are in a room full of plants."

Mr Spruce is a man in the Conservatory. Mr Spruce can be apprehensive or calm. Mr Spruce is calm. Mr Spruce can be handsome or ugly.

At 9:02 AM: say "Mr Spruce flings himself to his knees and implores you to become his lawfully wedded wife.";
	now Mr Spruce is apprehensive;
	Mr Spruce gives up in two minutes from now.

At the time when Mr Spruce gives up:
	say "Mr Spruce sighs heavily, seeing that you don't intend to reply. 'Never mind, my dear, I'll ask later. Perhaps I should have spoken to your Papa first... yes, a gently-bred female... no wonder...'";
	now Mr Spruce is calm;
	Mr Spruce departs in one minute from now.

At the time when Mr Spruce departs:
	if the player can see Mr Spruce, say "Mr Spruce takes his leave of you.";
	otherwise say "Mr Spruce pokes his head in to say that he is leaving.";
	end the story saying "Well, that is over..."

Instead of saying yes in the presence of an ugly apprehensive Mr Spruce:
	now Mr Spruce is calm;
	say "Remembering what your mother said to you about the stock exchange and Dear Papa, you close your eyes and accept Mr Spruce.";
	end the story saying "Alas for your maiden hopes."

Instead of saying yes in the presence of a handsome apprehensive Mr Spruce:
	now Mr Spruce is calm;
	say "You are silent with delight for a moment before you say yes, yes!";
	end the story saying "How Genevieve Stubbs will cry!"

Instead of saying no in the presence of an ugly apprehensive Mr Spruce:
	now Mr Spruce is calm;
	say "Gently you inform Mr Spruce that it is impossible. He seems less deflated than you had expected.";
	end the story saying "Odd, that..."

Instead of saying no in the presence of a handsome apprehensive Mr Spruce:
	now Mr Spruce is calm;
	say "You lower your eyes and refuse petulantly, hoping to stir him to a more ardent repetition of these same requests. But then -- alack! -- he says 'I see how it is!' in a strangled voice, and strides from the room!";
	end the story saying "A fatal error!"

[And since the player might SAY YES TO SPRUCE, we had better reroute the relevant options:]

Instead of answering Mr Spruce that "no", try saying no.

Instead of answering Mr Spruce that "yes", try saying yes.

Instead of asking Mr Spruce to try saying yes, try saying yes.

Instead of asking Mr Spruce to try saying no, try saying no.

Instead of saying sorry, try saying no.

Instead of asking Mr Spruce to try saying sorry, try saying no.

Instead of answering Mr Spruce that "sorry", try saying no.

Test me with "z / z / z / yes".

Test more with "z / z / z / no".


