VAR name = "Leo"

#character Buttons
#characterName none
#background 0
The black forest; cold, dark, seemingly stretching on for miles, a place no one should be alone.
Yet, I find myself aimlessly walking across the jagged yellow brick road.
Pitter-patter, of little feet, can be heard running down the road.
A small rabbit approaches, only this is no ordinary rabbit.
This rabbit is purple with button eyes, one hanging lower than the other, little tufts of stuffing coming out in places.
->The_Beginning


== The_Beginning
            #characterName ...
            #anim happy
            "Oh Yes! {name} I have been looking everywhere for you we must go, we have to go now!" the rabbit insisted as he pushed my leg.
    * ["Wait! ... What are you?"]
 #anim questioning
 #characterName none
 The rabbit pauses and looks up with his button eyes. 
            #characterName ...
            "It's me {name} don't you remember? 
    * *["No, I don't know who you are nor why I am here."]
#anim idle
#characterName none
Turning to leave, the rabbit yells out,     
            #anim happy
            #characterName Buttons
            "It's Buttons! How could you forget me? We were never apart but never mind that we have no time to waste; we must be going!" 
            #character none
             Buttons replied hastily, then he leaped away.
    * * *[Chase after Buttons]-> Story_One_Begin_Queen

== Story_One_Begin_Queen    
#background 1
Without a moment's notice, a woman came scrambling out of the forest carrying a baby wrapped in a blanket made of silk lined with gold.
            #character QueenWithBaby
            #characterName Woman With Baby
            #anim sad
            "Oh, please, you must help me! There is a  small man who is looking for me."
            "You mustn't tell him we were here; please, I beg of you, sir." 
            "If he finds us, he will take my baby from me."
    *["Where will you be going?"]
            #anim idle
            "Just there upon the hill, there is a tower. My babe and I will be safe there; we must be going before night falls."
#character none
You watch as the young woman heads up the hill towards the tower.
    * *["Okay now that was strange"]
Turning to see if Buttons is still by your side, only to see an empty road.
    * * *["Where in the hell did that rabbit go now?"]-> Story_One_Begin_Rumpel

== Story_One_Begin_Rumpel 
#background 2
Continuing down the road, you see a small man dressed in a medieval-styled trench coat.
As you begin to approach; he walks with stride onto the road in front of you.
            #character Rumpel
            #characterName Small Man
            #anim happy
            "Alas! Good Evening young lad, for I have been waiting for you. I require your assistance." a manic laugh escapes from him. 
    * ["For me? I don't think so."]
            #anim questioning
            "You insult me, fear not! I can ease your mind, but it will cost you something in return."
    * *["Cost me? What do you mean it will cost me?"]
            #anim idle
            "There is a young woman that has passed through here recently that has something of mine. You are going to help me retrieve it. -> Choices
    
    
== Choices
    //the sentence "You are now at an impass, who will you help?" Should be a system message. 
#message You are now at an impasse, who will you help?
        //Evil
    * [Help the small man]->Evil_Rumple
        //Good
    * [Help the young woman and her baby]->Good_Help_Queen
    

== Evil_Rumple
//#morality down
#message You have decided to help the small man.
        #anim happy
        #characterName Rumpelstiltskin
        "Excellent young lad! The name is Rumpelstiltskin; you will get the Queen's babe for me.
        #anim angry
        If you don't, you will not be able to leave." he laughs.
#characterName none
#anim idle
#background 3
The sun started to set and soon it was dusk, he leads you to a small house in the forest, a fire burning already.
He starts dancing around the fire and sings:
        #characterName Rumpelstiltskin
        #anim idle
        "To-day I bake, to-morrow brew,
        The next I'll have the young Queen's child.
        Ha! glad am I that no one knew 
        That Rump.."
#characterName none
#anim sad
Before he could finish his name, you jump up and cut him off.
    *["It is not wise to be saying your name out loud; someone might hear then the Queen will know."]
        #anim angry
        "Ha!" 
        #anim happy
        "The Queen will never know my name; tomorrow her babe will be mine!"
    * *[Next Morning]-> Evil_Next_Morning_Rumpel


== Evil_Next_Morning_Rumpel
#background 2
#character Rumpel
#characterName none
#anim angry
The next morning we walked to the tower on the hill. 
  #background 4
  #character none
  Following Rumpelstiltskin, we reached the top of the tower:
  BANG BANG BANG his fist raps on the door
        #characterName Rumpelstiltskin
        #anim angry
        "I have given you three days, I told you if by that time you find out my name, then shall you keep your child. You have failed to know thy name, now give me what you promised!" he hissed
        #character QueenWithBaby
        #characterName none
        #anim sad
        The Queen knowing she had no way out opened the door
        //Evil
    +[Leave with Rumpelstiltskin and the Queens baby]-> Rumpel_Golden_Token
        //Good
    +[Have a change of heart and tell her his name]->Good_Rumpel_Name
    

== Good_Rumpel_Name
//#morality up
#anim idle
"Queen his name is Rumpelstiltskin!"
#characterName Queen With Baby
#anim happy
The Queen yells "Rumpelstiltskin!"
    #character Rumpel
    #characterName Rumpelstiltskin
    #anim angry
    "Nooooooo" screams Rumpelstiltskin 
#characterName none
#anim sad
He began slamming his foot down so hard it got stuck in the floor. 
While trying to take it out his body split into two.
#character QueenWithBaby
#anim happy
The Queen tosses you a token as you turn to leave.
    * *[View token]-> Rumpel_Bronze_Token
    

== Good_Help_Queen
//#morality up
#message You have decided to help the Queen and her baby.
#characterName none
    "Yes, I will help you get what you are looking for."
        #characterName Rumpelstiltskin
        #anim happy
        "Excellent young lad! Come, come let us not waste any more time here!" the small man laughs.
#background 3
#anim idle
The sun started to set and soon it was dusk, he leads you to a small house in the forest, a fire burning already. 
He starts dancing around the fire and sings:
        #anim happy
        #characterName Rumpelstiltskin
        "To-day I bake, to-morrow brew,"
        "The next I'll have the young Queen's child."
        "Ha! glad am I that no one knew"
        "That Rumpelstiltskin" he sang
#characterName none
Unwittingly Rumpelstiltskin revealed his name the Queen needs to know!
        ->Good_That_Night_Queen
        

== Good_That_Night_Queen
    +[Sneak away while Rumpelstiltskin is dancing] ->Good_Caught
    +[Wait till he is asleep to leave] ->Good_Queen_Tower
    

== Good_Caught
#anim questioning
You tried to sneak away while Rumpelstiltskin was dancing, he caught you and is now suspicious. 
    *[Wait till he is asleep to leave]
    ->Good_Queen_Tower
    

== Good_Queen_Tower
#character none
#background 2
You rush to the tower on the hill as fast as you can:
    *["My Queen it is {name} please look out your window!"]
The Queen peers out.
#characterName Queen
"What is it {name}?"    
    * *["My Queen his name is Rumpelstiltskin!"]
        "Rumpelstiltskin!" she explaims
        "Oh thank you kind sir!" she tosses a token down
    * * *[View Token]->Rumpel_Bronze_Token

== Rumpel_Bronze_Token
#character none
You have helped the Queen defeat Rumpelstiltskin

You received a Bronze token
    *[Travel to the yellow brick road]->The_Vial_Good

== Rumpel_Golden_Token
#character none
You helped Rumpelstiltskin get what he was owed

You received a Gold token
    *[Travel to the yellow brick road]->The_Vial_Evil





== The_Vial_Good
#background 0
#morality up
Once again you find yourself on the yellow brick road only this time it is different.
The road is coming to and end, at the end of the road is a giant tree with a door.
Inside it's a small room with a table in the center, walking towards the table Buttons bounds over. 
        #character Buttons
        #characterName Buttons
        #anim happy
        "You made it! I have been waiting {name} you were almost late! We cannot be late."
    *["We cannot be late for what Buttons? What is going on?"]
        #characterName none
        #anim drinkMe
        Buttons places a vial on the table
        #characterName Buttons
        "No time to say 'hello, goodbye' you're late, you're late!" he says as he pushes the vial closer
    * *[Drink the vial]
        ...
        ->DONE
    
== The_Vial_Evil
#background 0
#morality down
Once again you find yourself on the yellow brick road only this time it is different.
The road is coming to and end, at the end of the road is a giant tree with a door.
Inside it's a small room with a table in the center, walking towards the table Buttons bounds over.
        #character Buttons
        #characterName Buttons
        #anim happy
        "You made it! I have been waiting {name} you were almost late! We cannot be late."
    *["We cannot be late for what Buttons? What is going on?"]
        #characterName none
        #anim drinkMe
        Buttons places a vial on the table
        #characterName Buttons
        "No time to say 'hello,goodbye' you're late, you're late!" he says as he pushes the vial closer
    * *[Drink the vial]
        ...
        ->END
    

 