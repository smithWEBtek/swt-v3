# Building a client-side application with React-Redux

## Objectives

1. Demonstrate mastery of material in this course
2. Push yourself — integrate with a new API!

## Woo!
You made it! All of your hard work and long hours have lead you here... to this moment... a moment of glory! You've earned every gym badge, defeated every boss, wrestled with your inner daemons (heh) to ultimately lead you to this.

![Jim Carrey Celebrating New Years](http://i.makeagif.com/media/9-04-2015/f4fAal.gif)

## Your final assessment 

This lesson covers your final assignment. It is supposed to be your magnum opus — a culmination of
all the skills you've learned so far. It's going to be a tough one, but you'll make it through.

## Overview
This assignment is open-ended when it comes to the actual content. You are free to create
whatever you'd like, as long as it incorporates most of what you've learned in this course. If
you don't have any inspiration at the moment, here are a couple of ideas:

- Twitter client
- Imgur browsing app
- Reddit feed
- Airbnb clone
- Crossword puzzle
- A simple board game 

## Requirements

- The code should be written in ES6 as much as possible
- Use the `create-react-app` generator to start your project.
	- Follow the instructions on this repo to setup the generator: [create-react-app](https://github.com/facebookincubator/create-react-app)
- Your app should have one HTML page to render your react-redux application
- There should be 2 container components
- There should be 5 stateless components
- There should be 3 routes
- The Application must make use of `react-router` and proper RESTful routing (should you choose to use react-router v3 please refer to the appropriate [docs](https://github.com/ReactTraining/react-router/tree/v3/docs); docs for v4 can be found [here](https://reacttraining.com/react-router/web/guides/quick-start))
- Use Redux middleware to respond to and modify state change
- Make use of async actions to send data to and receive data from a server
- Your Rails API should handle the data persistence. You should be using `fetch()` within your actions to GET and POST data from your API - do not use
jQuery methods.
- Your client-side application should handle the display of data with minimal data manipulation
- Your application should have some minimal styling: feel free to stick to a framework (like react-bootstrap), but if you want to
write (additional) CSS yourself, go for it!

Go wild! These are only the basic requirements — you're free to add on as much stuff as you'd like.

## Hooking up a Rails API backend

Use this blog to hook up a React-Redux frontend to your rails API backend: [Setup Rails API with React](https://www.fullstackreact.com/articles/how-to-get-create-react-app-to-work-with-your-rails-api/)

## Assessment

### Be prepared to
1. Explain your code. You might be asked why you chose to solve things a certain way, or why you
chose a certain library or code structure.
2. Refactor/reorganize your code.
3. Build out extra basic functionality.

### What to expect from the pairing session
Your final project review is a comprehensive review that can cover all the topics that you have covered in the Learn.co curriculum. We will be asking the majority of questions about the final section, but don't be surprised if your interviewer asks questions about earlier topics. Like earlier reviews, we really do want you to succeed, and we'll work with you as many times as necessary to get you through the review if you don't nail it the first time (which is quite common and completely OK). However, we will potentially give you a hard time, cut you off, push you on your use of vocabulary and/or your coding choices. We want to try to give you a sense of what a coding interview might be like, so you build the confidence to describe your app and to write code even in a higher pressure, slightly more adversarial environment.

#### Be scrappy.
- If you make a mistake, correct yourself. 
- Think on your feet. We will expect you to be able to explain development concepts to us, as well as expanding on concepts that you have already implemented, but you’ll also have the opportunity to look things up while you're live coding.

#### Make no little plans.
- Approach live coding with a constructive attitude. You might feel nervous or uncertain, but as long as you are familiar with the section material you should be able to reason your way to a solution.
- Be proud of your project and your code, and show confidence in it. 

#### Radiate positivity.
- Present yourself and your project in the best way possible. 
- Be open to feedback, both positive and constructive. 
- If the instructor asks you to complete additional features, or you missed a project requirement, be sure to ask questions in a positive manner without becoming argumentative. Learning to become a developer is complex and challenging, and it’s our job to find the holes in your knowledge and help you fill them. This is to help you become a better developer, not to delay your graduation.

#### Work Together.
- Our goal is to give you the most thorough technical interview possible in the time allocated. This will include live coding where the instructor might give you one or two pointers, but will for the most part sit back and watch you code.
- Ask clarification questions when you need them. Asking for more details is always ok.

#### Pursue mastery.
- You will be expected to be able to present yourself as if you were in consideration for a developer position.
- Use the best technical vocabulary you can. You will be expected to present yourself as a competent full stack developer.
- Curiosity and willingness to learn are hugely valued in our industry. If there are things you don’t understand, then ask questions at the end of the review for more information. Your instructor will be able to point you to the appropriate section lead or technical coach for more information.


### What won't happen
- You won't be told you're ever wrong
- You won't be yelled at, belittled, or scolded
- You won't be put on the spot without support
- There's nothing you can do to instantly fail or blow it.

<p class='util--hide'>View <a href='https://learn.co/lessons/react-redux-assessment'>React Redux Portfolio Project</a> on Learn.co and start learning to code for free.</p>



### the blank.md file is rendering
because there is no markdown file for this post.

# WORKING TITLE

intro

## SECTION 1

- what this section is about
- why it matters
- research or examples
- takeaways

## SECTION 2

- what this section is about
- why it matters
- research or examples
- takeaways

## SECTION 3

- what this section is about
- why it matters
- research or examples
- takeaways

***

conclusion

<small>Image credits:</small>

Headers
# H1
## H2
### H3
#### H4
##### H5
###### H6

Alternatively, for H1 and H2, an underline-ish style:

Alt-H1
======

Alt-H2
------
H1
H2
H3
H4
H5
H6
Alternatively, for H1 and H2, an underline-ish style:

Alt-H1
Alt-H2
Emphasis
Emphasis, aka italics, with *asterisks* or _underscores_.

Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two tildes. ~~Scratch this.~~
Emphasis, aka italics, with asterisks or underscores.

Strong emphasis, aka bold, with asterisks or underscores.

Combined emphasis with asterisks and underscores.

Strikethrough uses two tildes. Scratch this.

Lists
(In this example, leading and trailing spaces are shown with with dots: ⋅)

1. First ordered list item
2. Another item
⋅⋅* Unordered sub-list. 
1. Actual numbers don't matter, just that it's a number
⋅⋅1. Ordered sub-list
4. And another item.

⋅⋅⋅You can have properly indented paragraphs within list items. Notice the blank line above, and the leading spaces (at least one, but we'll use three here to also align the raw Markdown).

⋅⋅⋅To have a line break without a paragraph, you will need to use two trailing spaces.⋅⋅
⋅⋅⋅Note that this line is separate, but within the same paragraph.⋅⋅
⋅⋅⋅(This is contrary to the typical GFM line break behaviour, where trailing spaces are not required.)

* Unordered list can use asterisks
- Or minuses
+ Or pluses
First ordered list item
Another item
Unordered sub-list.
Actual numbers don't matter, just that it's a number

Ordered sub-list

And another item.

You can have properly indented paragraphs within list items. Notice the blank line above, and the leading spaces (at least one, but we'll use three here to also align the raw Markdown).

To have a line break without a paragraph, you will need to use two trailing spaces.
Note that this line is separate, but within the same paragraph.
(This is contrary to the typical GFM line break behaviour, where trailing spaces are not required.)

Unordered list can use asterisks
Or minuses
Or pluses
Links
There are two ways to create links.

[I'm an inline-style link](https://www.google.com)

[I'm an inline-style link with title](https://www.google.com "Google's Homepage")

[I'm a reference-style link][Arbitrary case-insensitive reference text]

[I'm a relative reference to a repository file](../blob/master/LICENSE)

[You can use numbers for reference-style link definitions][1]

Or leave it empty and use the [link text itself].

URLs and URLs in angle brackets will automatically get turned into links. 
http://www.example.com or <http://www.example.com> and sometimes 
example.com (but not on Github, for example).

Some text to show that the reference links can follow later.

[arbitrary case-insensitive reference text]: https://www.mozilla.org
[1]: http://slashdot.org
[link text itself]: http://www.reddit.com
I'm an inline-style link

I'm an inline-style link with title

I'm a reference-style link

I'm a relative reference to a repository file

You can use numbers for reference-style link definitions

Or leave it empty and use the link text itself.

URLs and URLs in angle brackets will automatically get turned into links. http://www.example.com or http://www.example.com and sometimes example.com (but not on Github, for example).

Some text to show that the reference links can follow later.

Images
Here's our logo (hover to see the title text):

Inline-style: 
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")

Reference-style: 
![alt text][logo]

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 2"
Here's our logo (hover to see the title text):

Inline-style: alt text

Reference-style: alt text

Code and Syntax Highlighting
Code blocks are part of the Markdown spec, but syntax highlighting isn't. However, many renderers -- like Github's and Markdown Here -- support syntax highlighting. Which languages are supported and how those language names should be written will vary from renderer to renderer. Markdown Here supports highlighting for dozens of languages (and not-really-languages, like diffs and HTTP headers); to see the complete list, and how to write the language names, see the highlight.js demo page.

Inline `code` has `back-ticks around` it.
Inline code has back-ticks around it.

Blocks of code are either fenced by lines with three back-ticks ```, or are indented with four spaces. I recommend only using the fenced code blocks -- they're easier and only they support syntax highlighting.

```javascript
var s = "JavaScript syntax highlighting";
alert(s);
```
 
```python
s = "Python syntax highlighting"
print s
```
 
```
No language indicated, so no syntax highlighting. 
But let's throw in a <b>tag</b>.
```
var s = "JavaScript syntax highlighting";
alert(s);
s = "Python syntax highlighting"
print s
No language indicated, so no syntax highlighting in Markdown Here (varies on Github). 
But let's throw in a <b>tag</b>.
Tables
Tables aren't part of the core Markdown spec, but they are part of GFM and Markdown Here supports them. They are an easy way of adding tables to your email -- a task that would otherwise require copy-pasting from another application.

Colons can be used to align columns.

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

There must be at least 3 dashes separating each header cell.
The outer pipes (|) are optional, and you don't need to make the 
raw Markdown line up prettily. You can also use inline Markdown.

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3
Colons can be used to align columns.

Tables	Are	Cool
col 3 is	right-aligned	$1600
col 2 is	centered	$12
zebra stripes	are neat	$1
There must be at least 3 dashes separating each header cell. The outer pipes (|) are optional, and you don't need to make the raw Markdown line up prettily. You can also use inline Markdown.

Markdown	Less	Pretty
Still	renders	nicely
1	2	3
Blockquotes
> Blockquotes are very handy in email to emulate reply text.
> This line is part of the same quote.

Quote break.

> This is a very long line that will still be quoted properly when it wraps. Oh boy let's keep writing to make sure this is long enough to actually wrap for everyone. Oh, you can *put* **Markdown** into a blockquote. 
Blockquotes are very handy in email to emulate reply text. This line is part of the same quote.

Quote break.

This is a very long line that will still be quoted properly when it wraps. Oh boy let's keep writing to make sure this is long enough to actually wrap for everyone. Oh, you can put Markdown into a blockquote.

Inline HTML
You can also use raw HTML in your Markdown, and it'll mostly work pretty well.

<dl>
  <dt>Definition list</dt>
  <dd>Is something people use sometimes.</dd>

  <dt>Markdown in HTML</dt>
  <dd>Does *not* work **very** well. Use HTML <em>tags</em>.</dd>
</dl>
Definition list
Is something people use sometimes.
Markdown in HTML
Does *not* work **very** well. Use HTML tags.
Horizontal Rule
Three or more...

---

Hyphens

***

Asterisks

___

Underscores
Three or more...

Hyphens

Asterisks

Underscores

Line Breaks
My basic recommendation for learning how line breaks work is to experiment and discover -- hit <Enter> once (i.e., insert one newline), then hit it twice (i.e., insert two newlines), see what happens. You'll soon learn to get what you want. "Markdown Toggle" is your friend.

Here are some things to try out:

Here's a line for us to start with.

This line is separated from the one above by two newlines, so it will be a *separate paragraph*.

This line is also a separate paragraph, but...
This line is only separated by a single newline, so it's a separate line in the *same paragraph*.
Here's a line for us to start with.

This line is separated from the one above by two newlines, so it will be a separate paragraph.

This line is also begins a separate paragraph, but...
This line is only separated by a single newline, so it's a separate line in the same paragraph.

(Technical note: Markdown Here uses GFM line breaks, so there's no need to use MD's two-space line breaks.)

YouTube Videos
They can't be added directly but you can add an image with a link to the video like this:

<a href="http://www.youtube.com/watch?feature=player_embedded&v=YOUTUBE_VIDEO_ID_HERE
" target="_blank"><img src="http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>
Or, in pure Markdown, but losing the image sizing and border:

[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](http://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)
Referencing a bug by #bugID in your git commit links it to the slip. For example #1.

