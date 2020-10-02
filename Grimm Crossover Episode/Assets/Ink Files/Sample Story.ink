#anim invisible
#message Test message
#character Ghost
#background 0
Ooooooooo I'm a ghost...
You have sinned and I'm here to haunt you!
#anim happy
#character ...
#background 1
JUST KIDDING!
#anim idle
#message Anyone reading this?
#character Mysterious Stranger
Here I am, you miss me?
* [Yes]
    #morality up
    Haha, true.
    -> SCENE_TWO
* [No]
    #morality down
    #anim questioning
    Ok, rude.
    -> SCENE_TWO
* [...]
    #anim questioning
    ...
    Alright then...
    -> SCENE_TWO

== SCENE_TWO ==
#anim idle
Well, see ya.
#anim invisible
This is the end of the story
-> END