VAR name = "Leo"

- The black forest seeming to stretch on for miles, aimlessly walking along the jagged yellow brick road.
  Suddenly, from the gnarled and twisted trees outbounds a rabbit.


            "{name} I have been looking everywhere for you we have to go, we have to go now!" the rabbit said in a rush as he was pushing my leg.
    * ["Wait who are you?"]
 The rabbit pauses and looks up at you with the button eyes. 
            "It is me {name} don't you remember? Buttons, from your childhood. We have no time to waste, we must be going!" 
             Buttons replied, running ahead of me now.
    * * [Chase after him] -> Story_One_Begin_Queen

== Story_One_Begin_Queen    
- Without a moments notice a woman came scrambling out of the forest holding a baby wrapped in a blanket made of silk lined with gold. 

            "Oh please you must help me! There is a man, he is very small and he is looking for me. You mustin't tell him we were here, please I beg of you sir. If he finds us he will take my baby from me."
    *["Where will you be going?"]
            "We will be going to the tower just there on the hill, I must be going now"
        
  The young woman runs off with her baby, you turn to look for Buttons but he is no where to be seen. -> Story_One_Begin_Rumpel

== Story_One_Begin_Rumpel  
 - As you continue along the yellow brick road you run into a small man who is gold from head to toe, he stops you.
 
            "Alas! Good Evening young lad for I have been waiting for you, I require your assistance" a manic laugh escapes from him. 
    * ["You have? I don't know who you are."] #anim confusion
            "You insult me, fear not! For I can ease your mind, but it will cost you something in return."
    * *["Cost me? What do you mean it will cost me?"]
            "A woman has something that is mine, you will help me get it." ->Choices
    
    
== Choices
    //the sentence "You are now at an impass, who will you help?" Should be a system message. 
- You are now at an impass, who will you help? 
    * [Evil: Help Rumpelstiltskin] ->Evil_Rumple
    * [Good: Help the Queen and her baby] ->Good_Help_Queen

== Evil_Rumple
- You have decided to help Rumpelstiltskin: Night begins to fall and he leads you to a small house in the forest, 
  a fire is burning outside already. He danced and singed:
        "To-day I bake, to-morrow brew,
        The next I'll have the young Queen's child.
        Ha! glad am I that no one knew 
        That Rump.."
  Before he could finish singing I jumped up and cut him off. 
    *[It is not wise to be saying your name out loud, someone might hear and then the Queen will know.]
        "Ha!" cried Rumpelstiltskin in his manic laugh 
        "She will never know my name and tomorrow her babe will be mine!" 
        -> Evil_Next_Morning_Rumpel

== Evil_Next_Morning_Rumpel
- The next morning we are at the tower on the hill where the woman is with her baby. 
  Following Rumpelstiltskin inside we reach the top of the tower:
        "I have given you three days' time, I told you if by that time you find out my name, then shall you keep your child."
        "You have failed to know thy name, now give me what you promised!" 
    + [Evil: Leave with Rumpelstiltskin and the baby] -> Rumpel_Golden_Token
    + [Good: Have a change of heart and tell her his name] ->Good_Rumpel_Name

== Good_Rumpel_Name
    +[Queen his name is Rumpelstiltskin!] -> Rumpel_Bronze_Token

== Good_Help_Queen
- You have decided to help the Queen and her baby.
    * [Yes, I will help you get what you are looking for.]
        "Oh.. Yes much better! We can do anything!" he laughed. Night began to fall and we went to a small house in the forest,
        a fire is burning outside already. He danced and singed:
        "To-day I bake, to-morrow brew,
        The next I'll have the young Queen's child.
        Ha! glad am I that no one knew 
        That Rumpelstiltskin I am styled." he sang ->Good_That_Night_Queen

== Good_That_Night_Queen
    * [Sneak away while Rumpelstiltskin is dancing] ->Good_Caught
    * * [Wait till he is asleep to leave] ->Good_Queen_Tower

== Good_Caught
- You tried to sneak away while Rumpelstiltskin was dancing but he caught you and has grown suspicious of you.
    *[Wait till he is asleep to leave] ->Good_Queen_Tower

== Good_Queen_Tower
- You rush to the tower to meet the Queen after discovering the name. She peers down from the top of the tower and you yell to her:
    *[Queen his name is Rumpelstiltskin!]
        "Oh thank you kind sir!" and she tosses down a token ->Rumpel_Bronze_Token

== Rumpel_Bronze_Token
- You decided to help the Queen, you received a BRONZE TOKEN 
->Chapter_Two

== Rumpel_Golden_Token
- You decided to help Rumpelstiltskin, you received a GOLD TOKEN
->Chapter_Two




== Chapter_Two

Leaving the tower and following the yellow brick road Buttons comes bounding towards me. 
        "Well, Where the fuck have you been? I just went through the a whole lot of crazy"
        "Here and there, a little bit of everywhere. But we must hurry {name} so we are not late!"
        *[Chase after Buttons]
        ->Snow_White_Begin

== Snow_White_Begin        
- A short distance up the road we run into a beautiful young woman with fair skin and black hair speaking with an old peddler outside a little cottage. Turning to look for Buttons he was once again gone.
//next remark will be said inside the Players head 
        "Perfect, he is gone once again. I will strangle his stuffed neck next time I see him" 
    *[Excuse me Miss is everything okay?]
-- The beautiful young woman looked away sheepishly but did not say anything. 
    * * [There is no reason to be shy, what is your name?]
    Turning to face me, she had the most beautiful face I have ever seen. 
    "My name is Snow White"
---"Tell her how beautiful this laced corset would look on her" cackled the old peddler.
  She had a hunched back and a crooked smile:
    * * *[Evil: It would look stunning, you should accept the gift] 
    -> Evil_Queen_Castle
    * * *[Good: It's not needed, don't accept the gift] 
    -> Snow_White_Good_End
   
   
== Evil_Queen_Castle
Convincing Snow White to put the corset on, the horrid peddler put it on so tight that Snow White passed out. 
The peddler laughs, waves her hands and smoke appears. Once the smoke cleared was the Wicked Queen, Queen Grimhilde. 
Dressed in her long flowing royal purple gown she strode over to where I was standing. 
        "Come with me child, let us find out who the fairest one of them all is."
    *[Go to the Queens castle] 
    ->Snow_White_Queens_Castle
    *[Regret what you did and go back to help Snow White] 
    -> Snow_White_Corset_Help


== Snow_White_Queens_Castle
The Queen is at the only mirror in the room:
        "Mirror, Mirror on the wall. Who is the fairest of them all?"
        "Snow White, O Queen, is the fairest of them all." replied the mirror
outraged the Queen quickly turned on her heal and stormed towards me. 
        "YOU!" she said, pointing her bony finger in my face.
        "You must help me get rid of her once again!"
    *[Evil: Suggest giving her a poison apple]
    ->Snow_White_Poison_Apple
    *[Good: Leave the castle] 
    ->Snow_White_Good_End


== Snow_White_Corset_Help
You see Snow White lying on the ground unconscious:
    *[Run to her]
The corset is too tight
    * *[Take out your knife and cut the laces]
Slowly she regains consciousness 
        "Thank you" she whispers
You walk with her back to her cottage, along the way she sees a comb. It was such a lovely comb, Snow White picked it up and started combing her hair when she fell down as if she were dead. 
//Thought of the player
            "This must be another one of the Queens misfortunes"
    * * *[Evil: Leave the comb in and go back to the Queens castle] 
    ->Snow_White_Queens_Castle
    * * *[Good: Remove the comb] 
    ->Snow_White_Comb_Removed
    
    
== Snow_White_Comb_Removed   
Snow White's eyes began to flutter open and she sat up. 
            "What happened?" she asked
        *[The comb must have been cursed by the wicked Queen]
            "Oh nn, I must be getting home. My friends will be waiting for me, Goodbye!" 
            ->Snow_White_Bronze_Token
    
== Snow_White_Poison_Apple
    *[My Queen we can give her a poison apple]
        "When she breaks the peel, taste the apple, her breath will still, then I will be the fairest in the land!" replied the wicked Queen
The Queen began working her magic on the apple, "Take this to Snow White, one bite is all it takes." she stated as she handed me the apple wrapped in cloth.
    * *[Evil: Take the apple to Snow White] 
    ->Snow_White_Eats_Apple
    * *[Good: Refuse to give the apple to Snow White] 
    ->Snow_White_Warned
    
==Snow_White_Eats_Apple
    *[Snow White! So glad I was able to see you, I wanted to apologize about earlier]
        "Apologize? What for?
    * *[I suggested that you wear the corset I didn't know it was going to cause you to pass out]
          "oh... ya.. that..."
    * * *[I brought you an apple, straight from the orchard]    
While ensuring the best shine, while carefully unwrapping the apple.
#anim gasp #character Snow White
         "I love apples, how did you know they are my favorite?"
She takes the apple in her hands, sinks her teeth into it, juice flows down her chin. Then, she collapses and the apple rolls out of her hand.
    * * * *[Find your way back to the yellow brick road] 
    -> Snow_White_Gold_Token

==Snow_White_Warned
You find Snow White at her cottage with her seven dwarfs.
    *[Snow White the wicked Queen is on her way with a poison apple, she will be disguised as a peddler. Do not eat it! I had to rush over and warn you before I left to continue down the road]
        "Thank you for warning me about her, please take this token." 
        ->Snow_White_Bronze_Token
              
==Snow_White_Good_End
    "Thank you for helping me today, please take this token" 
    -> Snow_White_Bronze_Token

    
== Snow_White_Bronze_Token
You protected Snow White from the wicked Queen, she will live happily with her seven dwarfs. 

You received a BRONZE TOKEN
->DONE
        
== Snow_White_Gold_Token
You helped the wicked Queen become the fairest of them all:

You received a GOLD TOKEN
->DONE




== Chapter_Three

->END