"Replies"

The Grove is a room. In the Grove is a woman called the Sybil.

Instead of asking the Sybil to try saying no: try saying no. Instead of asking the Sybil to try saying yes: try saying yes. Instead of asking the Sybil to try saying sorry: try saying sorry.

Instead of answering the Sybil that "yes", try saying yes. Instead of answering the Sybil that "no", try saying no. Instead of answering the Sybil that "sorry", try saying sorry.

Instead of saying yes in the presence of the Sybil:
	say "She looks interested."

Instead of saying no in the presence of the Sybil:
	say "She looks annoyed."

Instead of saying sorry in the presence of the Sybil:
	say "She looks bored."

[The complexity arises from the fact that we want to handle both YES and SYBIL, YES. If we only had the latter, 'yes' would be treated as a text given to the Sybil, just as in the commands SAY YES TO SYBIL or ANSWER YES. But because we have defined it as a command (so that the player can use it independently), SYBIL, YES is understood as an order to the Sybil to do the YES action.]

[Fortunately, we can redirect everything, as here, so that the results wind up the same.]

[And if we want yet another variation not covered by the Inform standard:]

Understand "tell [someone] [text]" as answering it that. Understand "tell [someone] that [text]" as answering it that.

[But that is a matter for a later chapter.]

Test me with "yes / sybil, yes / say yes to sybil / answer yes / tell sybil yes / no / sybil, no / say no to sybil / answer no / tell sybil no /  sorry / sybil, sorry / say sorry to sybil / answer sorry / tell sybil sorry".

