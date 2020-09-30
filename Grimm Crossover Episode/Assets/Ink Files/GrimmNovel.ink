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
        "Well, Where the fuck have you been? I just went through a whole lot of crazy"
        "Here and there, a little bit of everywhere. But we must hurry {name} so we are not late!"
        *[Chase after Buttons]
        ->Snow_White_Begin

== Snow_White_Begin        
- A short distance up the road we run into a beautiful young woman with fair skin and black hair. She was speaking with an old peddler outside a little cottage, I turned to look for Buttons he was once again gone.
//next remark will be said inside the Players head 
        "Perfect, I will strangle his stuffed neck next time I see him" 
I approached the woman and the old peddler, the peddler was trying to sell her a corset with a lot of lace.         
    *[Excuse me, is this peddler bothering you?]
-- The beautiful young woman looked away sheepishly but remained quiet. 
    * * [There is no reason to turn away, what is your name?]
As she turned to face me, she had the most beautiful face. Almost as if she was the fairest in all the land. 
    "My name is Snow White" she replied
The peddler interjected:     
---"Wouldn't this corset fit her just perfectly?" cackled the old peddler.
  She had a hunched back and a crooked smile:
    * * *[Evil: It would look stunning, you should accept the corset] 
    -> Evil_Queen_Castle
    * * *[Good: It's not needed, you are beautiful without the corset] 
    -> Snow_White_Bronze_Token
   
   
== Evil_Queen_Castle
Snow White heeded your advice and purchased the corset. The peddler helped her lace it up and in doing so she laced it so tight that Snow White passed out.
         "Come with me, let us find out who the fairest of them all truly is."
    *[Follow her up the path]
Reaching a clearing smoke begans to appear, an ominous laughter could be heard from within. 
Once the smoke cleared a new figure emerged wearing a long royal purple dress topped with a golden crown.
        "Nothing better than seeing my sinister beauty once again, shall we go to my castle now?" eloquently spoke the wicked Queen
    * *[Evil: Go to the Queens castle] 
    ->Snow_White_Queens_Castle
    * *[Good: Regret what you did and go stay to help Snow White] 
    -> Snow_White_Corset_Help


== Snow_White_Queens_Castle
The Queens castle was dark on the outside, ravens circled above and it sat on the cliffs of the ocean. Following the Queen to the tallest tower there was a single mirror, she walked up to it and spoke:
        "Mirror, Mirror on the wall. Who is the fairest of them all?"
        "Snow White, O Queen, is the fairest of them all." replied the mirror
outraged the Queen quickly turned on her heal and stormed towards me. 
        "YOU!" she said, pointing her bony finger in my face.
        "You must help me get rid of Snow White!"
    *[Evil: Suggest giving her a poison apple]
    ->Snow_White_Poison_Apple
    *[Good: Refuse and leave the castle] 
    ->Snow_White_Bronze_Token


== Snow_White_Corset_Help
Your consciousness starts to get the better of you, you cannot stop thinking about Snow White laying there lifeless.
You turn on your heal and begin walking to where you last saw her, a short distance later.
You see Snow White lying on the ground unconscious:
    *[Run to her]
The corset is too tight and she cannot breathe
    * *[Find her cottage]
Panic seems to set in; trees appear like they are closing in on you. Walking in circles, unsure which way to go, you finally see smoke billowing out from the treetops left of where you are. 
    * * *[Head towards the smoke] ->Snow_White_Meet_Dwarfs
    
== Snow_White_Meet_Dwarfs
You reach the cottage, standing in front of you are seven dwarfs. 
    *[Snow White is in trouble; the wicked Queen laced a corset on her too tightly!]
All seven dwarfs jump into action, everyone races back to Snow White. They can remove the corset Snow White regains consciousness. 
        "Thank you, would you mind walking with me? I would like to show you something." 
    * *[Walk with her]    
        ->Snow_White_Comb
        
== Snow_White_Comb        
Snow White takes you down a narrow path through the forest that leads to a meadow. She begins to sing and animals one by one start to come out from the trees and bushes. They forest creatures circle her, the birds all sing back to her.. then a raven flys over and a golden comb with a ruby heart falls to the ground.
        "Oh! What a lovely comb, I wonder where it came from?" 
//Thought of the player
            "This must be another one of the Queens misfortunes"
While you are lost in your thoughts Snow White places the comb into her hair, she falls into a deep slumber.            
    * * *[Evil: Leave the comb in her hair] 
    ->Snow_White_Queens_Castle
    * * *[Good: Remove the comb from her hair] 
    ->Snow_White_Comb_Removed
    
    
== Snow_White_Comb_Removed   
Snow White's eyes began to flutter open: 
            "What happened?" she asked
        *[The comb must have been cursed by the wicked Queen]
            "Thank you, kind sir, for saving me, take this token as a reward of my gratitude." 
            ->Snow_White_Bronze_Token
    
== Snow_White_Poison_Apple
    *[My Queen we can give her a poison apple]
        "When she breaks the peel, taste the apple, her breath will still, then I will be the fairest in the land!" replied the wicked Queen.
The Queen began working her magic on the apple, 
        "Take this to Snow White, one bite is all it takes."
    * *[Evil: Take the apple to Snow White] 
    ->Snow_White_Eats_Apple
    * *[Good: Refuse to give the apple to Snow White] 
    ->Snow_White_Warned
    
==Snow_White_Eats_Apple
    *[Snow White! So glad I was able to see you, I wanted to apologize about earlier]
        "Apologize? What for?" Snow White replied
    * *[The corset]
          "oh... ya.. that..."
    * * *[I brought you an apple, straight from the orchard] I stated while carefully unwrapping the apple.
#character Snow White
#anim gasp
         "I love apples! How did you know they are my favorite?"
She takes the apple in her hands, sinks her teeth into it, juice flows down her chin. She collapses to the ground; the apple rolls away. 
You completed the task for the Queen, she is now the fairest one in the land. 
    * * * *[Find your way back to the yellow brick road] 
    -> Snow_White_Gold_Token

==Snow_White_Warned
Knowing the Queen wants to poison Snow White with an apple you must warn her immediately. 
    *[Find Snow White and warn her]
You reach the cottage where you are able to warn Snow White of the Queens evil plan.
    * *[Tell her about the poison apple]
        "You have been very brave going against the Queen like this. Please take this token as a reward of my gratitude"
        ->Snow_White_Bronze_Token
              
    
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