/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are standing around on the coast.

Your watch says it's {advance_time()}.

+ {time == 2} [Check on the village.] -> village
+ [Stroll down the coast.] -> beach2
-> DONE

== beach2 ==
This is further down the coast.
* {time == 1} [Look for some seashells.] -> shells
+ [Stroll back up the coast.] -> seashore

== shells ==
You pick up the shells.
-> beach2

== village ==
Just as before, the portal machine is off. There isn't much else to do around here.
+ [Check around the village houses.] -> village2
+ [Stroll back up the coast.] -> seashore

== village2 ==
Yet again, nothing. But there IS the Department outpost...
Your watch says it's {advance_time()}.
+ [Investigate the outpost.] -> outpost
+ [Return to the village.] -> village

== outpost ==
You approach the door to the outpost -- a building shaped like a large pizza box balanced on top of a slightly smaller one, and lined with windows.
As you approach the door, you see a sign stating: "DOORS ARE SEALED UNTIL 12:00 HOURS FOR SHIFT CHANGE".
Your watch says it's {&morning|noon|night}.
+ {time == 1} [Enter the outpost.] -> interior
+ {time != 1} [Wait around until noon.] -> wait

== wait ==
You stroll around the perimeter of the outpost for a while, taking in whatever view there is until noon.
~ time = 1
-> outpost

== interior ==
The door is unlocked, so you open it and enter. The air conditioning that hits you right there is so relieving, you decide to find a chair and take a load off.
-> END
== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "morning"
        
        - time == 1:
            ~ return "noon"
        
        - time == 2:
            ~ return "night"
    }
    
    ~ return time
    
    
    
