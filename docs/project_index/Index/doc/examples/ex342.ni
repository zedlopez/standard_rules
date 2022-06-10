"Hudsucker Industries"

Tone is a kind of value. The tones are effusive, affectionate, polite, curt, and flamingly rude.

A letter is a kind of thing. The description of a letter is usually "On inspection, it turns out to be quite [tone]." A letter has a tone. The tone of a letter is usually polite.

A letter can be read or unread. A letter is usually unread. Carry out examining a letter: now the noun is read.

Before printing the name of a read letter: say "[tone] ".

Before printing the name of an ungrouped letter: say "random ".

Before printing the plural name of a letter (called the subject):
	if the subject is grouped:
		say "[tone] ";
	otherwise if the number of unread letters which are next to the subject is 0:
		say "unsorted ".

After printing the plural name of a letter (called the subject):
	if the number of read letters which are next to the subject is 0, say " (all unread, at the moment)" instead;
	if the number of unread letters which are next to the subject is greater than 0, say " (some as yet unread)" instead.

Proximity relates a thing (called X) to a thing (called Y) when the holder of X is the holder of Y. The verb to be next to means the proximity relation.

Definition: a letter is grouped:
	if it is unread, no;
	if the number of unread letters next to it is greater than 0, no;
	repeat with item running through letters which are next to it:
		if the tone of item is not the tone of it, no;
	yes.

Definition: a letter is ungrouped if it is not grouped.

The Mailroom is a room. "Usually a thrumming hive of bee-like workers, but you got in early to get a jump on the day's work."

The satchel is carried by the player. Two flamingly rude letters are in the satchel. Five polite letters are in the satchel.

The mail wall are fixed in place in the mailroom. "Before you is a wall of mailboxes, including [a list of mailboxes which are part of the mail wall]."

The plural of mailbox is mailboxes. A mailbox is a kind of container. The CEO box is a mailbox. The Hold box is a mailbox. The Trash box is a mailbox. Understand "mailbox" as a mailbox.

[Now, there's a good bit of interaction to streamline. We intend that the player will be taking letters from the satchel, reading them, and putting them (perhaps grouped) into boxes. Our interaction rules should assist in this process as much as possible. To start with, the player will be most likely to examine letters he hasn't read yet:]

Does the player mean examining a letter (called the subject):
	if we have examined the subject, it is very unlikely;
	it is very likely.

[The rules about taking are more subtle: the player is more likely to want to take an ungrouped letter than a grouped one; he is more likely to want one from the satchel than not; and he is most unlikely to want to take a letter (grouped or ungrouped) that he is already holding.]

Does the player mean taking a letter (called subject) which is grouped:
	if the player carries the subject, it is very unlikely;
	if the subject is in the satchel, it is possible;
	it is unlikely.

Does the player mean taking a letter (called subject) which is ungrouped:
	if the player carries the subject, it is very unlikely;
	if the subject is in the satchel, it is very likely;
	it is possible.

[And finally, we will assume by default that anything other than examining or taking is most likely to apply to a letter he's already identified:]

Does the player mean doing something other than examining or taking with a letter (called the subject):
	if we have examined the subject, it is likely;
	it is unlikely.

[And we would also like to understand properties under the same circumstances as printing -- a letter will be identifiable as "polite" if it's already been read and it is either by itself or in a sorted stack of polite letters, but otherwise not. What's more, to make it possible to disambiguate commands in the other direction, we'll call any unsorted letter "random", to represent that the player doesn't know what it is.]

Understand the tone property as referring to a letter when the item described is grouped. Understand "random" as a letter when the item described is ungrouped.

When play begins:
	now every mailbox is part of the mail wall;
	repeat with switch count running from 1 to 5:
		move a random letter to the satchel.

Test me with "inventory / examine letter / get letter / i / put letter in ceo box / inventory / get letter / x letter / g / g / i / x letter / g / g / i / put letter in hold box / get letter / g / g / i".


