"Laura"

The City of Angels is a room. The incriminating photograph is carried by the player. The printed name of the incriminating photograph is "incriminating photograph of a woman with blonde hair".

[Now we've gotten around any awkwardness with printing the name -- but we also need to understand when the player refers to the photograph. When we define the names of objects under normal circumstances, Inform takes care of this automatically, but if we have especially set the printed name, we must also specially define the appropriate terms for the player to use. For this we need "understand", which will be explained in much more depth in a later chapter:]

Understand "woman" or "with" or "blonde" or "hair" or "of" or "a" as the incriminating photograph.

Test one with "x photograph / x incriminating photograph of a woman with blonde hair / x hair / x blonde / x woman with blonde hair / x incriminating photograph of a woman".

[That's probably as far as we really need to go, and if you are satisfied with this behavior, there is no need to read on.]

[One possible objection to this solution is that Inform will accept some nonsensical formulations as applying to the photograph: for instance, it will allow >EXAMINE PHOTOGRAPH OF, >X BLONDE PHOTOGRAPH WOMAN INCRIMINATING, or even >X OF ...though in the case there were two items with "of" names, the game would disambiguate with a question such as "Which do you mean, the incriminating photograph of a woman with blonde hair or the essence of wormwood?"]

[Traditionally, Inform has tended to be fairly flexible about word order, preferring to err in the direction of leniency. On the other hand, there are times when we need more exacting rules in order to distinguish otherwise similar cases.]

[Two features allow us to specify more exactly if we so desire. The first is that, if we specify a whole phrase as the name of something, all the words in that phrase are required, in the order given. Thus "Understand "blonde hair" as the photograph" would require that both "blonde" and "hair" be present, and would not recognize >X BLONDE, >X HAIR BLONDE, or >X HAIR.]

[Second, we can create tokens, such as "Understand "blonde hair" or "hair" as "[hair]", and then use these tokens in match phrases. This saves a good deal of time when we want to specify a number of different but fussy alternatives. So, for instance, here is a drawing that would not respond to >X OF, or >X BROWN EYES, but would respond to >X DRAWING OF MAN WITH BROWN EYES, >X MAN WITH BROWN EYES, and so on:]

The drawing is carried by the player. The printed name of the drawing is "drawing of a man with brown eyes".

Understand "eyes" or "brown eyes" as "[brown eyes]". Understand "man" or "man with [brown eyes]" or "brown-eyed man" as "[man]". Understand "[man]" or "drawing of [man]" or "drawing of a [man]" as the drawing.

Test me with "test one / test two".

Test two with "x drawing / x man / x of / x drawing of man / x drawing of a man / x drawing of a man with brown eyes / x drawing of a brown-eyed man / x brown eyes".


