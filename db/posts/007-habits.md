## THE LIST
This is my current list, as it came stream of consciousness. 
Your mission: get inspired by one or more of these ideas, and implement it if you want to.

This is a list of things I wish I had done in my first 2 years as a developer and student of development. While I did do several of these, I did not do ALL of them as EARLY as I could, or as FREQUENTLY as I wish, or as CONSISTENTLY as I would have preferred. Think of this article as your 'future self' talking to you and giving you advice that you should take to heart now. 

_WARNING_
These are all common sense habits, but they do not have the urgency that matches their importance over the long term. 
You will never see these habits as urgently as a ringing phone, or alarm. 
But they are worth doing, even if your "progress" slows a bit, in terms of speeding through the curriculum.
Habits can be formed in 30 days.
You'll start out having to prioritize things that don't seem as important as cranking through labs. 
It will seem like you are wasting time.


### 1. MAKE LITTE GREEN BOXES ON GITHUB, every day
  No matter how good looking you are, or how good your resume is, or how much your cool site talks about how you save the world, or how many people think you are fun to hang with, or how many people at meetups recognize your face, or how many emails you send to potential jobs.....(...add more if you like)

#### Making little green boxes on GitHub:
  ... will show that you are consistently practicing your craft 
  ... will help mitigate the fact that you don't have years of experience to reference. 
  ... will demonstrate that you can be useful to an enterprise.  

#### A professional musician practices or makes music every day. 
  Developers code every day. And you have no idea how much you are actually learning, especially if you stop for awhile and come back to find your mind is blank. Don't worry, it is accumulating in there, but set the odds in your favor. 

## You want a green grid like this: 


  ![](http://res.cloudinary.com/smithwebtek/image/upload/v1516673450/github-green_wl2gys.png)
 



# BOXES! Green... every day


### 2. Document your projects
  You will forget how you created some things. You will actually temporarily forget how you coded some things and you will marvel that the code you pushed up, is actually yours. It doesn't have to be a ton of info, but at least capture the little tidbits about configuration, or how a Gem behaves, or error messages you battled. Help the Universe by capturing this stuff, and it will also become great blog meat (yes, I said it: "blog meat"). So, write little summaries of your projects, start with editing README files. 

### 3. Create your own glossary or bookmarks folder to capture the deluge of information for now and future
  I have a huge list of bookmarks. It is not highly organized but at least I have a way to quickly capture ideas that I encounter, and I try to put them in folders where I can find them in the future. I will be turning a portion of my site into a curation / library / wiki of all the stuff I've collected. I got this idea from a great developer, David Wilkerson. He taught a class where he encouraged the building of your own glossary from day 1.

  In my case, I am building a little factory like this: 

  1. Bookmark
  2. Do "hello world" example of it
  3. Do an actual project with it
  4. Outline it for a blog post, including 
      -Title
      -Summary
      -Major points
      -Examples
      -Main Point
      -Conclusion

### 3a: Blog with a modular app built like the "bookmark-helloWorld-project-blog" machine 
  Create an app with a data model that represents the parts of a blog.
  Start filling in the buckets as you encounter juicy subjects. 
  It does not have to be complex, but why not use our knowledge of Sinatra and Rails to create modular blog material?
  My current blog data model is as follows: 
  
  ```ruby
   create_table "posts", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.string   "repo",       default: "enter_full_URL_or_leave_blank"
    t.string   "video_url"
    t.string   "site_url"
    t.text     "summary",    default: "summary_blank"
    t.text     "md_file",    default: "blank_md"
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end
  ```

### 3b: Blog in your favorite text editor with Markdown syntax
  As you can tell, I am a little clumsy with this right now, because I can't format things as pretty in VSCODE as I can in a Word doc. But the benefit is that I am living and working in my coding environment, using all the cool keyboard short cuts I know to get around, while I blog, while I improve my blog site, which is a Rails app, which I've published on Heroku with my own domain name. So I'm using 'gravity' to my advantage, not straying far from the tools of my trade. And USING the tools of my trade in my every day life as much as possible. 

  It's like remembering to bring something when you leave the house. You put it in a shopping back and hang it on the door knob, so you know you'll run into it when you leave. If I'm constantly coding, blogging, developing with the tools I use as a professional developer, I'm putting "mundane" tasks to use constantly improving my skills. 
  So the command line becomes second nature. 
  Repos, git commands, commits, branches, become second nature.
  And, the more this happens, the less interference between inspiration to working code.

#### Use the gem 'rails-erd' to create an (ERD) Entity Relationship Diagram of your data model:
  
  ![](http://res.cloudinary.com/smithwebtek/image/upload/c_scale,w_347/v1516678229/blog-data-model_rxdqj1.png)


#### 4. Take 5-10 seconds to read your code again ...just before you run a test
  Form your own expectation of the results before you run a test.
  Form an opinion first, it creates a 'teaching moment'. 

  Observe some things about this:  
    1. You lose less mental energy when you have reached some kind of conclusion about what should happen, even when incorrect. I love it when I take the time to proofread after several edits, and I think through each line, catching typos. It helps me stay "proactive" or "active" towards my effort, and less like a victim struggling through a dense forest. I think we don't stop enough and get our own mind thinking through what the code is doing. Forcing yourself to write code from only your memory is also a way to jumpstart your mind. It is worth it to test yourself and see how much you can actually produce on your own, through logic and deduction.

    2. If it fails, you are in a better position to have another, more refined opinion, and probably one that is closer to the solution, better than if you simply threw something against the wall to see if it would stick. The more you can develop this thoughtful approach, the more you will learn, from both code that works and code that blows up. 

    3. If you can develop the patience to read, form an opinion and actually read the error...
    ....you will be closer to confronting the root cause, sooner.
      (software and computers, as designed, are perfect)
      (almost 100% of the time, there is a completely valid reason why something is not happening as you expect)
      (I find this very comforting, to remove the emotion, side-step the frustration and see it as a machine.)

    4. Most applications have a few processes to trace...(not hundreds). 
      for example:
      -The data usually starts somewhere, moves somewhere, is transformed somehow, rendered somewhere and eventually returned somewhere

      -Variables are usually declared, are of a certain type, are populated somehow, get used somewhere, and are "in scope" at some point, and "out of scope" at another point. 

      -Configuration can be tricky, especially with things that are new or with highly evolving documentaion. 
        But even then, there IS a way that configuration works, and we just have to find it. 
        Again, having an opinion, logically reached, helps us find our way through it. 

#### The opposite is what I call "squirrel coding"
  The squirrel is not that smart, just because he picked away at the garbage can until the lid happened to fall off, doesn't mean he actually knows how to open the can. We don't want to have to code like a squirrel "trying whatever" until we swerve into the solution. God forbid the test passes and you don't know why!

  Start with the small, simple, basic "hello world" level of something new and difficult.
  Say to yourself what you expect it do to. 
  Read your code over again before compiling, running, executing, etc. 
  Try to catch errors in your thoughts before you just hit the button and try it. 
  Get to the point where you really expect your code to work before you test. 

### 5. Code along with videos
  But keep your head in the game by actually typing everything, don't get passive.
  Code along with everything the presenter is doing, but as soon as you have a sense of what they'll code next, STOP the video and see how far you can get on your own. Then when you resume play, the video will mean far more. 
  This requires a personal motivation / fire in the belly, which will reap big rewards. 
  
### 6. Create your own folder system
    Store experimental code and labs in sections and categories that make sense to you.
    Own this material, by filing it away on your system, so you can retreive it. 
    As you visit or revisit a topic, create little summaries that could be the seeds of a blog post.
    I think we should blog not just for publishing to the world, but simply to organize our own heads.
  
### 7. Create your own naming conventions, or adopt some and use them. 
  This promotes consistency in your thinking and code. 
  And it forms habits that will serve you in the future when you have to regenerate your brain.
  These are all byproducts of 'owning' the learning process.

  Meaningful names last longer in a project, it is worth the time to create good names.
  You will be typing these names hundreds of times while you code, so the more they are organic, short, easy to spell and easy to PLURALIZE, the better.
  
### 8. Reach out and talk to other people
  You have no idea how powerful it is to have your burden shared even for a moment with other like minded souls. This is one of the valuable parts of Flatiron, setting it apart from the other schools. My personal belief is that it began with Avi Flombaum's spirit of teaching, heart for coding and raw talent. I am so grateful he decided to do a school instead of a million other things he could have done with the last 5 years. And, I believe that he inherited some of this attitude from [Matz](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto), "Matz is nice, so we are nice".

### 9. Help someone else every day
  Helping other people is actually very helpful to oneself. Most of the time, it is not technical in nature. You don't have to be an expert, to ask simple questions about clarifying code. You might just help the other person jog their memory as they explain the problem.  [Be a duck](https://en.wikipedia.org/wiki/Rubber_duck_debugging).
  I think that at least half of it is that you are bearing their burden with them even if for a brief time. As a result that they are strengthened enough to keep moving. Build up their strength so they can start forming their own opinions, starting from something verifiably true, testing and forming another opinion. 

### 10. Ask people (end users, civilians) what they wish their software could do
  Ultimately we are about making the world a better place, through our talents as developers. Who better to ask than people around us who are frustrated with how their software meets their needs. 

  [this article and podcast](https://www.smartpassiveincome.com/podcasts/no-ideas-no-expertise-no-money-business/) captures this idea very well.

  _funny story that happened recently:_

  I was at a meetup recently where a group of developers had a long discussion about what kind of app we could produce as a volunteer group for our community. The conversation wandered and settled on the loudest person in the room (where most devs are a little shy, the loudest voice takes on more meaning than it sometimes deserves). The consensus for an app became focused on this person's opionion that we needed an app to track "pot holes" in the street and possibly a feature to track whether someone had left dog droppings without cleaning it up. ( we'll pause while I give a sigh... )

  Now, we live in a city where there are about 50 drug overdose deaths monthly. As I listened, it occured to me that we should ask the local police, fire, hospital, EMT workers if there was some way we could help them by developing an application. Perhaps I was not loud enough about this idea, but it did seem to register with many of the other attendees. My point:  ASK USERS WHAT THEY NEED, instead of living in your own head when imagining what the app should do.  Focus on the problems of your users, instead of broadcasting your features! Features are only useful if a user has a problem first, that is solved by that feature. 
  
### Problem Knowledge vs Product Knowledge 
  Now you might pitch the idea that a feature could inspire the user to new ideas, and a higher level of living. 
  And I would say that you probably work for Microsoft, painting imaginary value into the marketplace of ideas. And, perhaps there is some value in dreaming up a feature, foisting it on the world and then pretending that the world beat a path to your door, asking for that feature. 

  Reality teaches me that we are safer and more effective focusing on actual problems that users have, first. 
  
  In any development effort, you are faced with a long list of "nice to haves", "wish lists", etc. As I used to say to sales people:  STOP broadcasting your product knowledge. Your awareness of the client's PROBLEM is far more important than any PRODUCT knowledge you have of features and benefits.

  Users do not care that you have a thousand ways to code something. They have a limited budget, time and attention span to determine if you can actually solve their problem or not, before they move on to find the person who actually does understand their problem. This applies whether you are in a cutting edge startup, working for the most mundane of governmental departments or having a meeting with the local girl scouts to plan their site. I'll stop for now, but as most people in life have 1 or 2 songs they sing, this is my biggest hit, and I shall be heard. 


  But then, hey, maybe we do need a "dog poo app", as was suggested in the meetup earlier. 
  
  _moving on_

## 12. DO QUANTITY as well as quality
  I find with music students and students of piano tuning, that sometimes they just need to DO MORE. Repetition of skills to the point where they become deeper in your mind ( and deeper into your hands physically ) produces higher levels of everything. With piano, you practice things physically until your body becomes a conduit for musical ideas and emotions. You practice the language parts (scales, melodies, chord harmony positions) until you think on a higher plane about all of it. 
  
  My first piano tuning took me 6 hours of intense work, after 6 months of practice 4-6 hours per day to get to that point. My mentor told me that I could not charge for my service until I could tune a whole piano in 2hours, and until I had tuned 1000 pianos at the music school first. 

  My sense is that we'll all have this kind of trajectory in our growth as developers. I have built over 25 working Rails applications and about 20 working React apps. I've scratched the surface, but even in this effort I can start to think about Rails application possibilities on a higher level than I did when I was just learning to cobble things together and stumbling over every form, method, partial, route and configuration. 

  As a consultant in the past, I worked with different organizations on issues they had with sales, delivery and project management. I found that most sales people had one of three problems: 
    1. Not talking to the right people
    2. Talking to the right people, but not saying the right things.
    3. Talking to the right people, saying the right things, but not talking to ENOUGH right people. 

  So, the point.... do more, code more, there are huge benefits from producing not only quality, but QUANTITY.  
  And, on that same point...
  When you do a project, do 3 or 4 very similar object types for your data, which will force some repetition in to your project build, simply because you have multiple data groups to deal with. For example, my last project (a music teaching studio app), had Students, Teachers, Resources and Lessons.  This forced me to repeat a lot of code that was very similar for the four data groupings, further deepening my understanding of the code involved. 
  
  Had I only scraped my way through one data grouping, I would not have had nearly as rich a learning experience. 


### 13. Make your own list like this
  Everyone has insights along these lines. Make your own list and let us all read your blog so we can adopt some of your ideas  too!