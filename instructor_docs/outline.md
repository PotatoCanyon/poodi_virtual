# Pre Class

## Prepare the Repo

Create a new repo under TorqueForge following the directions in CLASS_SETUP.md.

## Prepare the Surveys
Angela makes them, they're on my google drive under 'Surveys'.
Each day's survey needs to be checked, and a bitly link must be created for the actual form.


# DAY 1

## Supplies
* small post-it notes (10x-ish times num of students)
* Poster (wall) sized post-it notes (2 packs)
* Many colors of sharpie markers
* Many ballpoint pens
* Cheap kitchen timer


## Opening

Pass out small post-it notes, pens and sharpies
Have them write their name on a small post-it attach to back of laptop
Warn them that they should pick a different seat tomorrow morning
Show the repo on the projector or write it on the board

**Say:**

* I'm _xxxx_
* This is _yyyy_
* git clone this repo
* Warning: YOU'LL NEVER CHECK CODE INTO MASTER OF THIS REPO

    for example...
    https://github.com/torqueforge/poodnc-2017

* We'll introduce the course in a bit
* For the next three days you’ll either be working (writing code) or talking to each other
* We don’t like to be talked at so you'll be writing code right away


Who has read the book?
How much Ruby?
How much TDD?
How much pairing?

Arrange them in a line based on how confident they feel about the book. Pair the head with the tail for the first exercise.
Once they're paired, get the sanity test running on everyone's machine.

**Say:**

* There’s a readme in your repo
* Following the directions to run the sanity test
* Pro-tip: You probably need to 'bundle install'


## Start the Bottles pre-test

**Say:** Here's how you run the tests:

    cd bottles
    ruby test/bottles_test.rb

* we have pre-written tests in minitest
* who has used minittest (no one) (That's okay, it works just like you’d expect)
* after 15 minutes we will interrupt you
* don't worry about finishing, just write some code to get a sense of the problem
* THIS IS NOT A TEST
* YOU WILL NOT FINISH, don't worry, THIS IS NOT A TEST
* Don't check things into master !!!!

Set the timer for 15 minutes.
9:20-ish

* we're all about learning theory
* learning theory says we should take breaks
* take a break :-)

**BREAK**
10-ish

## Introduce the course

### Explain how it works

Set the timer for 5 minutes to show them we're serious about not talking on and on and then tell them the following things:

* Course structure is dictated by learning theory
* Best schoolkid math outcomes from teachers who only ask questions
* Having said that, I'll tell you a few more things


### Preempt the skeptics

* We'll be asking you to learn some new techniques
* Some of you will find these techniques tedious and boring
* Don't resist. Suspend disbelief. Commit to learning them.
* You can ignore them after we're gone if you haven't been convinced.
* You can't choose to ignore them if you don't know them.
* Think of this as a 3-day coding vacation.
* Commit to doing what we ask.


### Console the planners

* We'll learn, and practice, all of the principles of OO Design
* We'll learn how to remove conditionals
* Do you have any messy conditionals?
* Overall schedule is flexible, we have a plan but it will not survive
* Syllabus is online (http://www.sandimetz.com/courses/ follow syllabus link) for those who need to know where we're going
* I need you to have faith for a while (probably until tomorrow afternoon)
* Survey each morning to give us feedback and tweak the course


### Collect Goals

About to collect goals, make sure you have a place to put them, perhaps put 4 big poster post-its on wall.  Do not yet put labels on these posters.

***Give them instructions:***

* (Public courses) Interview your pair, collect their goals on 3 different post-its
* (Private course) Write your own 3 goals on 3 different post-its

For private courses we collect goals, read each aloud and stick on the wall.
For public courses the interviewer introduces the interviewee and reads their goals aloud, after we which collect and stick on wall.

As you collect the goal goal post-its, group them into OOD, refactoring, testing, misc.
Once all the goal post-its are up, have them guess the names of the 4 groups, and then write the label on each group.


## Bottles Show and Tell
10:45-ish

***Describe how show and tells work:***

* like 5 minute lightening talk
* tell us your approach and how it led to your solution
* if someone has already shown a solution like yours, you don't have to show
* if you're showing, your job is to finish within 5 minutes
* if you're watching, your job is to applaud wildly when timer goes off

### During Bottles Show and Tell

* Did you find this exercise easy or hard?
* Are you proud or embarrassed about your code?
* Did you finish? (your solution is too complicated)
* Is your code understandable (would it pass the inebriation test?)
* How many different kinds of verse?
* How do they differ?
* Is this solution more complicated or simpler than the previous one?
* How did you decide what code to write? (I saw a pattern and I went there. What if you don’t see a pattern?)
* What force drove you to make these decisions?
* For production, would it look like this?
* Is there complexity here that the test did not force you to implement?


### Post Bottles Show and Tell

They might put evil pair code in #verse, #verses and #song to pass the tests.  If so, ask:

* What responsibility does #verse have? (produce any verse)
* What about #verses?  (call #verse for any range of verse numbers, or produce all the verses?)
* What about #song?

Only #verse is responsible for producing a verse, the other methods are responsible for algorithms.

* DON'T CHECK CODE INTO MASTER

## Define shameless green

* Intersection of maximum comprehensibility with minimum complexity
* Maximize comprehension, don't worry about changeability
* Many kinds of duplication are ok
* Prioritizes getting the tests running green
* Uses the Red-Green-Refactor cycle
* Uses simple transformations (see Bob), simple abstractions
* Collects maximum information (all tests green) before creating complicated abstractions
* Be brave (if you wrote it) and admiring (if you're looking at someone else's code)

***Ask:***

* Should we stop here at Bottles Shameless Green?
* What would justify a change to this code?
* Introduce 6-packs requirement.

***Things you might discuss:***

When you start the statement with “if you want to change…” you know you’re guessing.

This makes assumptions about the kinds of changes that are going to come, but we never know.

What kinds of changes might occur that this code can't easily handle?

If I wait until I have the next requirement to refactor, will it cost more, or less?

There is a place to guess. We want exemplary code. If I have experience that tells me that this customer will want x, y, z, then I might be justified to make the guess IF a novice programmer is coming behind me. If it’s me who’s coming behind, then I can just do it when I ask.



## Introduce 6-pack Requirment

6-packs

### Talk about open/closed.

* Ask them what the O in SOLID stands for (Open/Closed)
* Ask them what Open/Closed is short for. (Open for extension/Closed for Modification)
* Ask them what that means.
* Ask them to imagine a world in which you never have to change existing code to implement new behavior.
* Don't worry that this seems impossible, just pretend for a minute that it's true.
* If it's true, what are the consequences?

Make sure they say:
_If my code where open/closed:
  Adding new behavior can't break distant and unrelated things.
  My existing tests would always run green._

***Tell them:***

You should deal with new requirements in two steps.

  1. Make the existing code open to the new requirement
  1. Implement the new requirement

##### Step 1 is refactoring

  Make them define the word 'refactor':
  "Change the structure/arrangement of code without altering its behavior."

  Ask them if they use the word 'refactor' to mean implementing _new_ behavior. (They'll say yes.)  This is not refactoring.

#### Flowchart for dealing with a new requirement

Questions they should ask when thinking about a new requirement:
**Make POSTER from instructor_docs/open_closed.png**

  * Flowchart questions:
    * is this code open/closed to new requirement
    * do you know how to make it open/closed
    * fix the most approachable code smell

And/or post instructor\_docs/open\_closed.png into Slack

#### Code Smells

  * What's a "Code Smell"?
  (a sign that something might be wrong)
  * how to you fix code smells?
  (with curative refactoring recipes)
  * who can tell us the name of some code smell they're familiar with?
  (well, sometimes they can :-) )
  * what are the names of the code smells in this code?
  * Condition, magic number, duplication
  * What do you hate most, that you actually understand and know immediately how to fix? (duplication of strings)
  * Okay, then, go fix the string duplication using the flocking rules.

#### How to Refactor
This is the start of DRYing out the strings using a very specific refactoring technique.

##### The Flocking Rules
**Make POSTER from instructor_docs/flocking_rules.txt**

1) find the things that are most alike
2) find the smallest difference between them
3) make the smallest change that will remove the difference
  1) Parse some code.
  2) Execute the code without using the result. (step is sometimes skipped)
  3) Execute the code and use the result
  4) Delete unused code.

try to make changes only on a single line of code
run the tests after each change
if the tests fail, undo and make a better change

These are simple rules, from which complex behavior emerges.

##### Other things to say
Never chase after red; if the tests fail, undo and make a change that leaves the tests green.

The rule is to make small differences the same, NOT to DRY out big commonalities.

Don't get distracted by strings that are the same, instead identify and remove strings that are different.

Do complete 'horizontal' refactorings before switching to a 'vertical' path. This means that once you pick two strings and start making them the same, you should finish this entirely before getting distracted by a third string, no matter how much that other string calls out to you.

**Day 1 Lunch**

Repo Prep:

    git checkout master
    git checkout origin/bottles_1_shameless -- bottles/
    git commit -m 'shameless bottles'
    git push origin master



## Bottles, Mob DRYing out strings

Get the volunteer typist hooked up to the monitor.

Ask them to do a ```git pull```.

Tell the class NOT to work along on their own computers.  Right now they should just pay attention and participate; they'll each do this exact exercise after lunch.

To get everyone to talk, consider asking one small group (3-4 folks) at a time to be responsible for making the next suggestion.  Given them some sort of token to hold when it's their turn, and let them decide who gets the token next.

***Reset their context***

Remind them that writing new code using tests means writing code under red, and refactoring means making 1 lines changes under green.  These are different modes.  We're about to refactor Bottles Shameless Green, so we're in 'refactor' mode.

Move to the back of the room and help them get started.  Ask:

  * Which cases are most alike?
    They should choose else and 2.
  * What is the smallest difference between them?
    Make them start with the 1st char.
  * What is the smallest change that will remove the difference?
    2 -> #{number}
  * etc

***As they mob this***

  * point out that the flocking rules cause you to write methods that are mini examples of open/closed.  We put 'if' statements in the methods to make the methods 'open' to use in new places.
  * remember that they'll encounter a Liskov violation when they try to send capitalize to #amount so that, in the 0 case, 'no more' will turn into 'No more'.  They should send #to_s to the number inside of the #amount method.  The method should return a trustworthy object; it should return something that understands #capitalize.
  * when extracting a method, they'll occasionally choose the non-else case as the first thing they return.  This requires that they use a real value (not :fixme) as the default for the parameter.  Give them time to understand this.
  * Many times they can make things the same by using a no-op.  This is an important idea.  The _concept_ exists, even if it can sometimes be implemented as a no-op.

Things you might ask afterwards:

  * Who hates this technique? Who loves it? (love/hate breaks down across experience lines)
  * If you hate it, why?
  * Can you imagine this technique being useful?  In what situation?
  * Is it slow, or just boring?
  * Have you ever written code for 15 or 20 minutes and then had to throw it all away, or dug so deep a hole that you did git reset --hard?
  * What was wrong?  You thought you knew where you were going, but couldn’t get there.
  * With this technique, how much complexity ends up in the code that you don’t need?

Remind them:

  * It is not inevitable that your production code be the way it is.
  * Your tendency to want to move fast, tendency to want to be clever/smart/complicated



## Bottles, They DRY out strings

2:10-ish

SWITCH PAIRS

Make sure they ```git pull```

* Do a big re-anchor in context
  * Had Shameless Green
  * Got requirements change - 6 packs
  * What it open?
  * Do you know how to make it open?
  * What were the code smells? - Conditionals, duplication
  * How did we decide which to fix? - The one we understood best.
  * Doing a refactoring, what's the definition? - change arrangement not behavior
  * What does this mean about your tests?  - they should not break
  * This is not TDD Red-Green-Refactor, it's refactor under green.

* you have 30 minutes to DRY out the strings
* we'll see where you are, might need more time
* if you get done, go through it again with the other person typing
* don't go off the rails, get one of us if you're tempted

This might take two iterations.
If some get confused, help them.  
If all get confused, hook someone up to the projector and have the class give them advice.

You should not need a Show & Tell, but if people go wrong in creative ways it can be useful to have them save a copy of the hole they fell into, and then show it to the class later.  

Even if you don't do a Show & Tell, get them to talk to each other about how it went.

***Ask:***

  * was this easy?
  * was it interesting or boring?
  (They may avoid confessing that they were bored for fear of hurting your feelings. Make sure they know you'll be happy if they describe this as boring. Boring is good.)
  * did you feel safe or at risk?
  * did you have any problems? What kind? Why? How did you fix them?
  * what method names did you choose?
  * would you guess that all the solutions are alike?
  * if so, why?
  * might it have business value for certain problems to get solved the same way by everyone?

***Say:***

  * This is a resting point, the end of a horizontal refactoring.
  * Remember we only did this because we want 6-packs.

***Ask:***

  * is this code better or worse then what we started with?
    * what would flog say?
    * we turned one conditional into many :-)
    * it flogs worse
  * this is really a procedure.  It's not very OO.
  * is anything better?
    * string duplication is gone
    * concepts have names
  * is this better overall than shameless green?


  * what's next?
    * Repeat Flowchart
        * is the code open to the 6-packs requirement?
        * do you know how to make it open?
        * then fix the most approachable sin
  * what is that sin?

Afterwards, discuss their experience.

2:25-ish

Was it hard or easy to follow the Flocking Rules?  Scary or safe?

#### Characteristics of the DRY Bottles Solution

***Ask:***

  * what do you notice about method shape?
  (methods with if statements have a common shape)
  * do methods with if statements contain any code other than the if statement?
  (no)
  (remind them that their pre-test bottles wasn't like this at all)
  (each true/false branch is the most atomic thing at the intersection of the concept named by the method and a specific value of number)
  * if you added the private keyword, where would you put it?
  * what do you notice about method arguments?
  * does argument 'number' represent the same thing everywhere?
  * do the private methods depend more on the argument that got passed, or more on the class as a whole?
  * what do we call these things?
  (code smells)
  * what are code smells
  (a sign that something might be wrong)
  * how to you fix code smells?
  (with curative refactoring recipes)
  * what are the names of the code smells in this code?
  (primitive obsession, feature envy)
  * what's a primitive?
  (the number)
  * what's the refactoring recipe that cures primitive obsession
  (extract class)

Yeah, we wish we had a smarter number, and that's the next refactoring.

'number' ought to be a first class object which holds onto a single value of number and implements all those methods; then you wouldn't have to pass the argument around, you could just get the right object and send it a message.



## Bottles, Mob Extract Class

2:45-ish

Repo Prep:

    git checkout master
    git checkout origin/bottles_2_shameless_to_dry -- bottles/
    git commit -m 'shameless bottles'
    git push origin master

Create an empty class
Copy the methods to it
Add an attr_reader and initializer for number
In Bottles, go into every method we've copied over and replace it's contents with
  BottleNumber.new(number).action(number)

Then remove the method arguments one at a time, using a default of (number=self.number) or (sneakily) changing the name of the number argument to something else (notused=:deleteme)

This is a good place to talk about caching, cache invalidation, immutability, and treating object creation as free.

Once they get all of the forwarding in place, all of the forwarded methods can be made obsolete by just getting an instance of BottleNumber (well, two instances) in the #verse method. Have them do this next.

When they attempt to get the 'next' BottleNumber, they should be unhappy with the #successor method.  They'll want successor to return a BottleNumber instead of a Fixnum.  Make sure they understand the problem:

  * this is a Liskov violation
  * don't try to fix it now, just note it
  * I would prefer to just ask the object I know for something and have to answer be right
  * Don't want to get the result and have to do something to it
  * this is just like the problem of #amount needed to return a 'capitalizable'

The #successor method is more interesting to deal with as part of the 'factory' problem.  They don't really understand it, use that fact to urge them to put it off.

***Say:***

  * Don't ignore the simple problems and just to the hard ones.
  * Instead, fix the simple problems and the hard ones disappear.

Once Extract Class is done, ask:

  * tell me about the shape of the methods.
  (all methods contain a conditional)
  * does any method contain anything but that conditional?
  (no)
  * tell me about the condition itself, what is it testing?
  (the methods all switch on some explicit value of 'number')
  * what concept does 'number' represent?
  (the number of bottles)
  * does any method have more than one responsibility?
  (no, each branch of each conditional returns the smallest atomic idea)

***Ask:***

* is this code better of worse than Shameless Green?
* how does it flog?
* is it open/closed to 6-packs? Do you know how to make it open?



### Bottles, They do Extract Class

3:45-ish

Make sure they all ```git pull``` before starting.

**Make POSTER from instructor\_docs/poster\_extract\_bottle_number.txt**

***OFFICE HOURS***

4:15-ish




# DAY 2

Repo Prep:

    git checkout master
    git checkout origin/bottles_3_dry_to_bottle_number -- bottles/
    git commit -m 'Extract BottleNumber'
    git push origin master

## Survey

9:00-ish

* Remind them to pick a different seat
* Tell them bit.ly link for the survey
* Give them a few minutes to fill out survey
* Go over survey publicly

## Reflection

9:15-ish

* get in groups of 4 or 5
(have them count off going around the room, which creates groups made of folks who are sitting far apart)
* discuss what you learned yesterday
* take a wall post-it and draw something that represents it, or...
* classes have done poetry, Ms Manners questions, art, plays, etc.  The bar is high.
* you get 30 minutes.  You'll run out of ideas at 15 minutes.  Stick with it, the best ideas happen if you persevere. Don't quit and read email at the 16 min mark.

Do reflection presentations

***BREAK***

10:25-ish

### Bottles, Mob conditional to polymorphism, data clump, successor

10:40-ish

Remind them of the current state of the code.  

* BottleNumber has been extracted.
* Once created, instances never mutate. They're thread-safe.
* Methods all contain conditionals that switch on 'number'.
* 'number' represents the same thing in every case.

Notice that we still have the Primitive Obsession code smell, but now we're obsessing on not just a Fixnum, but on a specific value of a Fixnum.  This is only obvious because of the shape of the code, and the code is only shaped this way because we following the refactoring (flocking) rules.

Help them get started with bottles\_4\_bottle\_number\_to\_no\_conditionals.  You should only have to prompt them to create one subclass and fix one method, and they should get the rest on their own.  Stand in the back and relinquish control as soon as possible.

Process:

(In all of the following, run the tests at every opportunity.)

Create BottleNumber0 as subclass of BottleNumber
Copy one method (maybe #amount) into the new subclass.
Delete everything but what's needed for 0.

In Bottles you now need to get a subclass of the _right_ class, based on the value of the Fixnum.  

Go into Bottles and get an instance of BottleNumber0 for the 0 case. Since the following code knows the name of the BottleNumber class in two places we'd have to change this code in both places to conditionally get a new BottleNumber or BottleNumber0.

    def verse(number)
      bottle_number      = BottleNumber.new(number)
      next_bottle_number = BottleNumber.new(bottle_number.successor)

Putting the same conditional in there twice is crazy; it's time for a factory.

    def bottle_number_for(number)
      if number == 0
        BottleNumber0.new(number)
      else
        BottleNumber.new(number)
      end
    end

After the Factory is in use, you can delete the unused code from #amount up in BottleNumber.

Change:

    def amount
      if number == 0
        "no more"
      else
        number.to_s
      end
    end

To:

    def amount
      number.to_s
    end

Repeat until they have BottleNumber0, BottleNumber1 and BottleNumber, and
a little #bottle_number_for or #make_bottle_number factory method in Bottles.

### 99 Bottles, Data Clump

Define data clumps, for example, if you're always passing x,y around, you might need a Point class, or is you're passing starting\_date,ending\_date, you might need a DateRange class.

If you turn data clumps into objects, behavior will coalesce into the new classes.

Fix the #quantity/#container data clump in verse by adding #to_s in BottleNumber.

### Add 6-packs

This is so easy and so satisfying that it's best to do it as a group.

They should first change the tests (we're now back in the red-green-refactor cycle).

### Bottles, They do conditional to polymorphism, data clump, successor

11:40-ish

This seems easy, but they may have trouble with the Factory, and fixing the Liskov violation in the successor method.  Give them lots of help.  You can also identify the folks that get it and have them mentor groups of 3 or 4.

Once they all get through the conditional to polymorphism refactoring...

### Fix the #successor Liskov violation
  * Move bottle_number_for to BottleNumber.for
  * Temporarily add `return` to `for` if number is already a BottleNumber
  * Fix the successor methods to return a BottleNumber-ish
  * Use successor in Verses last line
  * delete the temporary return
Now `verses` does nothing with `number` other than turn it into something else.
Talk about converting it to the right thing at first chance.


**Day 2 Lunch**


12:00-ish

Repo Prep:

    git checkout master
    git checkout origin/bottles_6_successor_liskov -- bottles/
    git commit -m 'Polymorphic BottleNumbers'
    git push origin master

## Bottles, Mob Factories, Monkey Patching 

12:45-ish

### Factories

  * Use const_get to make the factory we have open closed
  * Do factory escalations
      * What if you want the factory to be open to new subclasses? (metaprogramming, #const_get)
      * What if you want better names? (Hash, YML, database list)      
      * What if you want to disperse the logic that chooses the right class into the class that might be chosen (handler pattern)?
      * What if you want to register classes because of inheritance?
      * What if you want classes to register themselves?

### Monkey Patch Integer, Add Conversion method on BottleNumber
  turning 3 dependencies into two


**BREAK**
1:50-ish


## Create SOLID posters
Create Wall Poster of Extract Class Recipe while they're doing SOLID posters.

2:00pm

Have them count off from 1-5 or S-D (S O L I D)
give them 35 minutes to take a 5 min break and then do 30 mins research
have them give 5 minute presentations (this is a great opportunity for them to nourish their inner playwrights)
Their presentation should include a definition, examples (in code and/or in life) and places in class or in their own applications where they follow/break the rule.

Solid Presentations and discussion
2:30-ish

SOLID isn't so useful, but tell them about Steve Freeman and Nat Pryce's
  * Loosely Coupled
  * Highly Cohesive
  * Easily Composable
  * Context Independent

**5 minute BREAK**



## Bottles, Mob verse template
3:10-ish

## Bottles, They do verse template
4:00-ish


### Day 2 options

Classes which have students of widely different backgrounds tend to splinter during the afternoon of day2/morning of day 3.  If you have students who are finishing everything early, give them one or more of the following assignments (all presentations are to be 5 minutes:

* Help teach the students who are behind on the exercises
(Tell them that teaching is a great learning experience, and challenge them to only ask questions of their 'students'.)
* Do research on the methods in Enumerable, and make a presentation showing useful ways to enumerate over Arrays.
* Play with adhoc/ruby_hierachy.rb file (you'll have to pull this folder into master) in irb and pry, and make a presentation.
* Make a presentation about refinements: what they are, the scope in which they are active.

Inheritance in BottleNumbers

  why it’s ok to use inheritance safely here.
  * at the edge of the object graph (leaf node)
  * at least one subclass overrides every single method in the base class. All the behavior is used in the inheritance tree. Everything in the superclass varies (at some point in time).
  I want the subclasses to be a complete specialization of all the behavior in the superclass. We have constrained the superclass to the behavior that we want to override.

  objects at the core of the domain should probably not use inheritance.



# DAY 3

Prep the repo with house, adhoc and farm:

    git checkout master

    git checkout origin/house -- house/
    git commit -m 'add house exercise'

    git checkout origin/farm -- farm/
    git commit -m 'add farm exercise'

    git checkout origin/adhoc -- adhoc/
    git commit -m 'add adhoc exercise'

    git push

Remind them to pick a different seat.

Have them do surveys and reflection as per day 2.

**BREAK**

10:25am

### Farm, Null Object Pattern, Wrapping External Interfaces

Introduce the Farm exercise.  

* Tell them about 40 times that they cannot change Animal and that they should pretend they can't see the code in Animal.
* Show the 'articalize' refinement.  Tell them not to worry about it; it just works.
* Tell everyone if they look at the problem and already know the solution, that they can't let the cat out of the bag for others.  They are welcome to help teach, but they must do so by asking leading questions, not by explaining the NullObject Pattern.

The goal is to get them to express this problem as one they know], and then to fix it with the technique they learned in Bottles.  That means they have to write to entire 'if' statement down, and then get an object to stand in for both the true branch and the false branch.  Since Animal already exists, they just need to figure out that they should create NullAnimal.

Sometimes they write the if statement and say "I see, I could just monkey patch nil to add #sound and #species".  If they say this, let them...

    class NilClass
      def sound
        "<silence>"
      end
      def species
        "<silence>"
      end
    end

And then once they get it working, tell then that the methods are exactly right, but ask if it makes sense to put them on NilClass.  When they say, "Err, well, no", ask them what class they go on.  Once they decide to create a NullAnimal or MissingAnimal or something

    class MissingAnimal
      def sound
        "<silence>"
      end
      def species
        "<silence>"
      end
    end

help them figure out how to swap nils for instances of MissingAnimal, and then push the conditional up to the #initialize method, and then out into a wrapper.

Remember that creating a wrapper introduces and API breaking chance and requires that you change the tests.  Sometimes it's worth it. :-)

### Rails Advice
If there's time to talk about Rails, it's here.
  * Don't use Concerns
  * Don't use Helpers
  * Don't let the framework API creep into your code
    * Can only send ActiveRecord methods from direct subclasses
    * Always use your own class methods/names scopes
  * Consider the effect of the above on testing
  * Consider the effect of the above when changing frameworks

**LUNCH**

## House, Shameless Green

Once they complete shameless green, decide that 'the house that Jack build' should be on the list of phrases, so stick it there in place of the empty string.  (see instructor\_docs/house\_escalations.txt )


## House, Random and Pirate

Let's drive them into a hole using inheritance.

RandomHouse Instructions:
  * Randomize the list ONCE before you start producing the Tale.
      * Don't randomize over and over again, randomize once!
  * The rules are: you can't use a conditional, and House must be open to the new requirement.
  * Tell them that inheritance is perfect and to go write it.

Pirate House Instructions
  * Have them decide what a pirate would say instead of "This is"
  * Same rules: you can't use a conditional, and House must be open to the new requirement.
  * Create a `prefix` method to isolate "This is".
  * Create PirateHouse to override `prefix`.

RandomPirateHouse Instructions:
  * Still want House, Random house and Pirate house.
  * Same rules.  No conditionals, House must be open.
  * New rule.  You may not duplicate any code.

Now inheritance is broken.

At this point it's easiest to ```git reset --HARD```, and edit House to take a random boolean and test it.

      attr_reader :data
      def initialize(random=false)
        @data =
          if random
            DATA.shuffle
          else
            DATA
          end
      end

This is the problem they know, and they should be able to figure out that they need an object for each branch of the conditional.  

These objects play a common role.
They must name the role, define the API, create various objects to play the role, and inject them into House.

They should create an orderer role, and then perhaps a prefixer role.
This is a good place to introduce them to named parameters, if it hasn't already come up.

Make them show you House, random house, pirate house and random pirate house, and then cut them loose on the escalations.

**Make POSTER from instructor_docs/house_escalations.txt**

Once they get this done, continue to add new variants.  All previous variants must continue to work, plus
  * Hold 'the house the Jack built' last, shuffle only lines 1-11.
  * Mix up actors 'the malt' and actions 'that lay in'.
  Each line has a trailing 'that'.  This final, trailing 'that' separates the actor from the action.
  * Mix up actors ('the priest'), modifiers ('all shaven and shorn') and actions ('the married').
  Not every line has a modifier, assume the modifier is '' if it doesn't exist.

### Course Summary
Stop them at 3:30 to do a summary.

This is OO.
  * a world of small, collaborating objects
  * Look for the conditional
  * identify differences that represent the same abstraction
  * Name the abstraction
  * Create polymorphic role players

This is OO.  




## Remind them to do final survey and day 3 reflection

Tell them the bit.ly day 3 survey link
Give them a few minutes to fill out survey

Hug and go
