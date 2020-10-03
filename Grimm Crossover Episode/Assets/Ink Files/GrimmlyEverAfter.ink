VAR name = "Leo"

- The black forest; cold and dark a place no man wants to be alone. 
The forest stretches on for miles, yet here I am aimlessly walking along the jagged yellow brick road.
Suddenly, running down the road, a small rabbit approaches. 
Only this was no ordinary rabbit, he was purple and had button eyes, there was stuffing falling out of him.
->The_Beginning


== The_Beginning
            "Oh Yes! {name} I have been looking everywhere for you we must go, we have to go now!" the rabbit insisted as he pushed my leg.
    * ["Wait! ... What are you?"]
 The rabbit pauses and looks up with his button eyes. 
            "It's me {name} don't you remember? 
    * *["No, I don't know who you are nor why I am here."]
Turning to leave, the rabbit yells out,     
            "It's Buttons! How could you forget me? We were never apart but never mind that we have no time to waste; we must be going!" 
             Buttons replied hastily, then he leaped away.
    * * *[Chase after Buttons]-> Story_One_Begin_Queen

== Story_One_Begin_Queen    
- Without a moment's notice, a woman came scrambling out of the forest carrying a baby wrapped in a blanket made of silk lined with gold.
            "Oh, please, you must help me! There is a  small man who is looking for me. 
            You mustn't tell him we were here; please, I beg of you, sir. 
            If he finds us, he will take my baby from me."
    *["Where will you be going?"]
            "Just there upon the hill, there is a tower. My babe and I will be safe there; we must be going before night falls."
You watch as the young woman heads up the hill towards the tower.
    * *["Okay now that was strange"] 
Turning to see if Buttons is still by your side, only to see an empty road.
    * * *["Where in the hell did that rabbit go now?"]-> Story_One_Begin_Rumpel

== Story_One_Begin_Rumpel  
- Continuing down the road, you see a small man dressed in a medieval-styled trench coat. As you begin to approach; he walks with stride onto the road in front of you.
            "Alas! Good Evening young lad, for I have been waiting for you. I require your assistance." a manic laugh escapes from him. 
    * ["For me? I don't think so."] #anim confusion
            "You insult me, fear not! I can ease your mind, but it will cost you something in return."
    * *["Cost me? What do you mean it will cost me?"]
            "There is a young woman that has passed through here recently that has something of mine. You are going to help me retrieve it
            ->Choices
    
    
== Choices
    //the sentence "You are now at an impass, who will you help?" Should be a system message. 
- You are now at an impasse, who will you help?
        //Evil
    * [Help the small man]->Evil_Rumple
        //Good
    * [Help the young woman and her baby]->Good_Help_Queen
    

== Evil_Rumple
- You have decided to help the small man:
        "Excellent young lad! The name is Rumpelstiltskin; you will get the Queen's babe for me. 
        If you don't, you will not be able to leave." he laughs.
The sun started to set and soon it was dusk, he leads you to a small house in the forest, a fire burning already. 
He starts dancing around the fire and sings:
        "To-day I bake, to-morrow brew,
        The next I'll have the young Queen's child.
        Ha! glad am I that no one knew 
        That Rump.."
Before he could finish his name, you jump up and cut him off.
    *["It is not wise to be saying your name out loud; someone might hear then the Queen will know."]
        "Ha!" 
        "The Queen will never know my name; tomorrow her babe will be mine!"
    * *[Next Morning]-> Evil_Next_Morning_Rumpel


== Evil_Next_Morning_Rumpel
- The next morning we walked to the tower on the hill. 
  Following Rumpelstiltskin, we reached the top of the tower:
  BANG BANG BANG his fist raps on the door
        "I have given you three days, I told you if by that time you find out my name, then shall you keep your child. You have failed to know thy name, now give me what you promised!" he hissed
        The Queen knowing she had no way out opened the door
        //Evil
    +[Leave with Rumpelstiltskin and the Queens baby]-> Rumpel_Golden_Token
        //Good
    +[Have a change of heart and tell her his name]->Good_Rumpel_Name
    

== Good_Rumpel_Name
    *["Queen his name is Rumpelstiltskin!"]
The Queen yells "Rumpelstiltskin!"
        "Nooooooo" screams Rumpelstiltskin 
He began slamming his foot down so hard it got stuck in the floor. 
While trying to take it out his body split into two. 
The Queen tosses you a token as you turn to leave.
    * *[View token]-> Rumpel_Bronze_Token
    

== Good_Help_Queen
- You have decided to help the Queen and her baby.
    * ["Yes, I will help you get what you are looking for."]
        "Excellent young lad! Come, come let us not waste any more time here!" the small man laughs
The sun started to set and soon it was dusk, he leads you to a small house in the forest, a fire burning already. 
He starts dancing around the fire and sings:
        "To-day I bake, to-morrow brew,
        The next I'll have the young Queen's child.
        Ha! glad am I that no one knew 
        That Rumpelstiltskin" he sang
Unwittingly Rumpelstiltskin revealed his name the Queen needs to know!
        ->Good_That_Night_Queen
        

== Good_That_Night_Queen
    +[Sneak away while Rumpelstiltskin is dancing] ->Good_Caught
    +[Wait till he is asleep to leave] ->Good_Queen_Tower
    

== Good_Caught
- You tried to sneak away while Rumpelstiltskin was dancing, he caught you and is now suspicious. 
    *[Wait till he is asleep to leave] 
    ->Good_Queen_Tower
    

== Good_Queen_Tower
- You rush to the tower on the hill as fast as you can:
    *["My Queen it is {name} please look out your window!"]
The Queen peers out "What is it {name}?"    
    * *["My Queen his name is Rumpelstiltskin!"]
        "Rumpelstiltskin!" she explaims
        "Oh thank you kind sir!" she tosses a token down
    * * *[View Token]->Rumpel_Bronze_Token

== Rumpel_Bronze_Token
- You have helped the Queen defeat Rumpelstiltskin

You received a Bronze token
    *[Travel to the yellow brick road]->The_Vial_Good

== Rumpel_Golden_Token
- You helped Rumpelstiltskin get what he was owed

You received a Gold token
    *[Travel to the yellow brick road]->The_Vial_Evil





== The_Vial_Good
Once again you find yourself on the yellow brick road only this time it is different. The road is coming to and end, at the end of the road is a giant tree with a door. Inside it's a small room with a table in the center, walking towards the table Buttons bounds over. 
        "You made it! I have been waiting {name} you were almost late! We cannot be late."
    *["We cannot be late for what Buttons? What is going on?"]
        Buttons places a vial on the table
        "No time to say 'hello,goodbye' you're late, you're late!" he says as he pushes the vial closer
    * *[Drink the vial]
    ->DONE
    
== The_Vial_Evil

Once again you find yourself on the yellow brick road only this time it is different. The road is coming to and end, at the end of the road is a giant tree with a door. Inside it's a small room with a table in the center, walking towards the table Buttons bounds over. 
        "You made it! I have been waiting {name} you were almost late! We cannot be late."
    *["We cannot be late for what Buttons? What is going on?"]
        Buttons places a vial on the table
        "No time to say 'hello,goodbye' you're late, you're late!" he says as he pushes the vial closer
    * *[Drink the vial] 
    ->END
    

 