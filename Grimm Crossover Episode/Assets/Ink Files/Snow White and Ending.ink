VAR name = "Leo"
== Chapter_Two

Leaving the tower, you try to wrap your head around everything that just happened while walking down the yellow brick road again.
    #character Buttons #anim sad
	"Oh, my whiskers... oh wait, they didn't make me with whiskers." 
Nearly jumping off the road from being frightened, I turned around to find Buttons
    #chracter Player
    #anim anger
        *["ARE YOU KIDDING ME! Where have you been? You left me, now you decide to show up again?"]
    #character Buttons    
        "Here and there, a little bit of everywhere. But we must hurry {name}, we cannot be late!" then Buttons takes off running once again.
        * *[Wait! Why are you running away again]
        * * *[Chase after Buttons] ->Snow_White_Begin

== Snow_White_Begin        
-After chasing Buttons, you give up trying to find him; he's disappeared again. 
	*["I will strangle his purple little stuffed neck the next time I see that annoying little rabbit"]
A short distance up the road, there is a woman with fair skin, talking to a peddler. They are standing in front of a cottage; it appears the peddler is trying to sell the woman a laced corset.
Walking up to the cottage, the woman seems to be arguing with the peddler over the corset. 
    * *[Assist the woman with the peddler]
Against your better judgment, you decide to walk over to help her.    
    * * *["Excuse me, is this peddler bothering you?"]
The beautiful fair woman looked away sheepishly but remained quiet. 
    * * * * ["There is no reason to turn away; what is your name?"]
She turned to face me; she had ruby red lips, fair skin; she is the fairest in the land. 
        "My name is Snow White" she replied 
        "Wouldn't this corset fit her just perfectly?" the peddler interjected 
        ->Snow_White_Decision
        
== Snow_White_Decision 
    //Evil
   +["It would look stunning on you, accept the corset."] -> Evil_Queen_Castle
    //Good
   +["A beautiful woman like you does not need a corset."] -> Snow_White_Bronze_Token
   
   
== Evil_Queen_Castle
Snow White heeded your advice and purchased the corset. The peddler helped her lace it up in doing so; she laced it so tight that Snow White passed out.
         "Come with me; let us find out who the fairest of them all truly is." sneered the peddler
    *[Follow the peddler up the path]
Reaching a clearing thick smoke began to emerge; a burst of ominous laughter reverberated off the trees.
Once the smoke cleared, a new figure emerged wearing a long royal purple dress topped with a golden crown.
        "Nothing better than seeing my sinister beauty once again, shall we continue?" her voice was like velvet
        //Evil
    * *[Go to the Queens castle] ->Snow_White_Queens_Castle
        //Good
    * *[Regret your decision, save Snow White] -> Snow_White_Corset_Help


== Snow_White_Queens_Castle
The Queen's castle was dark and ominous; ravens circled above, it sat on jagged cliffs above the rough sea. Inside the tallest tower was a mirror above a fireplace, the Queen walked up to it and spoke:
        "Mirror, Mirror on the wall. Who is the fairest of them all?"
        "Snow White, O Queen, is the fairest of them all." replied the mirror
Outraged, the Queen quickly turned on her heel, fire flickered in her eyes.
        "YOU!" she said, pointing her bony finger
        "You will kill Snow White, that brat will no longer be the fairest of them all!"
        //Evil
    *[Suggest giving Snow White a poison apple] ->Snow_White_Poison_Apple
        //Good
    *[Refuse and leave the castle] ->Snow_White_Bronze_Token


== Snow_White_Corset_Help
Standing next to the Queen, the image of Snow White lying their lifeless haunts you. 
Tortured quickly turning on your heel, you head back to where she is. A short distance later, Snow White comes into view still lying on the ground unconscious:
    *[Run to Snow White]
Reaching Snow White, the corset laced up too tight, causes a problem since you have nothing to cut the laces.
    * *[Go to Snow Whites Cottage] ->Snow_White_Meet_Dwarfs
    
== Snow_White_Meet_Dwarfs
Before you can enter the cottage, the door swings open seven little dwarfs stare back at you.
Staring in disbelief, not moving or hearing what the dwarfs are saying until... one slaps the ever-loving shit out of you.
    "What do you want!" the one in front is asking
The brain fog finally clears:    
    *["Snow White is in trouble; she needs help!"]
All seven dwarfs jump into action, everyone races back to Snow White. 
They can remove the corset just in time Snow White regains consciousness.
You help her up and she ask:
        "Would you mind walking with me? I would like to show you something." 
    * *[Go with Snow White] ->Snow_White_Comb
        
== Snow_White_Comb        
Snow White takes you down a narrow path through the forest that leads to a meadow. She begins to sing animals one by one start; to come out from trees and bushes. The forest animals circle her, birds sing back to her, then a raven flies over drops a golden comb with a ruby heart right into Snow White's hands.
        "Oh! What a lovely comb." 
        //Thought of the player
You watch as the comb falls right into Snow White's hands, wondering if this is another one of the Queen's misfortunes.
While lost in your thoughts, Snow White places the comb into her hair, instantly falling into a deep slumber. 
        //Evil
    * * *[Leave the comb in Snow White's hair] ->Snow_White_Gold_Token
        //Good
    * * *[Remove the comb from Snow White's hair] ->Snow_White_Comb_Removed
    
    
== Snow_White_Comb_Removed   
Snow White's eyes began to flutter open: 
            "What happened?" she asked
        *["The comb must have been cursed by the wicked Queen"]
            "You have saved me yet again" Snow White placed a kiss upon my cheek and slipped a token into my hand.
        * *[View token] ->Snow_White_Bronze_Token
    
== Snow_White_Poison_Apple
    *["My Queen we can give her a poison apple"]
        "When she breaks the peel, taste the apple, her breath will still, then I will be the fairest in the land!" replied the wicked Queen.
The Queen began working her magic on the apple, 
        "Take this to Snow White, one bite is all it takes."
        //Evil
    * *[Take the apple to Snow White] ->Snow_White_Eats_Apple
        //Good
    * *[Refuse to give the apple to Snow White]->Snow_White_Warned
    
==Snow_White_Eats_Apple
With the apple in hand you go back to where you first met Snow White.
    *["Snow White! So glad I was able to see you, I wanted to apologize about earlier."]
        "Apologize, what for?" Snow White replied
    * *["The corset"]
          "oh... ya.. that..."
    * * *["I brought you an apple, straight from the orchard."] 
#character Snow White
#anim gasp
         "I love apples! How did you know they are my favorite?"
She takes the apple in her hands, sinks her teeth into it, juice flows down her chin. She collapses to the ground; the apple rolls away.
    * * * *[Continue]-> Snow_White_Gold_Token

==Snow_White_Warned
Knowing the Queen wants to poison Snow White, you must warn her immediately. 
    *[Find Snow White to warn her]
You reach Snow White's cottage, where you can explain the plan of her demise.
    * *[Tell her about the poison apple]
        "No one goes against the Queen as you have" she places a kiss upon your cheek and slips a token into your hand.
    * * *[View token] ->Snow_White_Bronze_Token
              
    
== Snow_White_Bronze_Token
You protected Snow White from the wicked Queen!

You received a BRONZE TOKEN
->Road_to_Buttons_Good

        
== Snow_White_Gold_Token
You helped the Queen become the fairest of them all.

You received a GOLD TOKEN
->Road_to_Buttons_Evil


== Road_to_Buttons_Good
Once again you find yourself on the yellow brick road only this time it is different. The road is coming to and end, at the end of the road is a giant tree with a door. Inside it's a small room with a table in the center, walking towards the table Buttons bounds over. 
        "You made it! I have been waiting {name} you were almost late! We cannot be late."
    *["We cannot be late for what Buttons? What is going on?"]
        Buttons places a vial on the table
        "No time to say 'hello,goodbye' you're late, you're late!" he says as he pushes the vial closer
    * *[Drink the vial]->Mental_Hospital_Good

    
== Road_to_Buttons_Evil

Once again you find yourself on the yellow brick road only this time it is different. The road is coming to and end, at the end of the road is a giant tree with a door. Inside it's a small room with a table in the center, walking towards the table Buttons bounds over. 
        "You made it! I have been waiting {name} you were almost late! We cannot be late."
    *["We cannot be late for what Buttons? What is going on?"]
        Buttons places a vial on the table
        "No time to say 'hello,goodbye' you're late, you're late!" he says as he pushes the vial closer
    * *[Drink the vial] ->Mental_Hospital_Evil


== Mental_Hospital_Good
Pain seers behind your eyes for the first time you notice a brightness that didn't seem to be there before. Slowly opening your eyes, you try to shield them with your hand only to realize you cannot. You are bound to a chair, your head covered in wires with a monitor hooked up to it.
   A woman comes over the speaker
        "Welcome back {name} you have been under for quite awhile"
    *["Where am I, Who are you?"]
        "Memory loss and confusion is normal at first. You are at at the maximum security psychiatric hospital, I am Dr. Masey"
    * *["Psychiatric hospital? Why am I strapped down?"] 
        "Well, {name} this is for your safety and ours. You have undergone an experimental empathy test, where we exposed you mentally to multiple scenarios. These scenarios are for us to determine if you are ready for rehabilitation."
    * * *["It was all in my head? It felt so real."]
    "Yes, We are recommending based on the choices you made within the scenarios for rehabilitation. You have passed your empathy test {name} Congratulations."
    ->DONE
    
== Mental_Hospital_Evil
Pain seers behind your eyes for the first time you notice a brightness that didn't seem to be there before. Slowly opening your eyes, you try to shield them with your hand only to realize you cannot. You are bound to a chair, your head covered in wires with a monitor hooked up to it.
   A woman comes over the speaker
        "Welcome back {name} you have been under for quite awhile"
    *["Where am I, Who are you?"]
        "Memory loss and confusion is normal at first. You are at at the maximum security psychiatric hospital, I am Dr. Masey"
    * *["Psychiatric hospital? Why am I strapped down?"] 
        "Well, {name} this is for your safety and ours. You have undergone an experimental empathy test, where we exposed you mentally to multiple scenarios. These scenarios are for us to determine if you are ready for rehabilitation."
    * * *["It was all in my head? It felt so real."]
        "Yes, we believe that due to the paths you chose within the scenarios, you are not ready to be rehabilitated. You have failed your empathy test; you will remain here at the maximum-security psychiatric hospital indefinitely."
You are locked away in your cold dark cell to be lost in your mind forever.        


->END