##PIANO SEARCH - RUBY CLI GEM

Command Line Interface application, using Ruby and NokoGiri to scrape Craigslist, in search of the 2 most popular models of Yamaha piano, the model U2, and the model P22. Similar to buying a Toyota Corolla or Camry, the Japanese made pianos are very solid investments.


###Summary

Version 0.1.0 PianoSearch

Searches Boston Craiglist Musical Instruments for Yamaha P22 or Yamaha U1 pianos for sale.
Prompts user to choose 'Yamaha piano model U1' or 'P22'.

Displays a list, including prices and headlines of existing posts.
Prompts user to choose a post #, to see details.

Displays the Price, Location, Headline and Description (post text) for the chosen post.
Prompts user to choose another post #, or 'list' to restart, or 'x' to exit.

 

###Business Application

The Ruby Gem PianoSearch is a basic measurement of used piano sales in Boston, to allow a piano dealer insight on the "competition" that exists in the used piano market. Potential buyers all face the decision of whether to buy used or new. The 2 piano models in PianoSearch are good measures of the market, very similar by analogy, to the Toyota Corolla and Toyota Camry in the auto market.

(Basic cars that are Japansese-made and hold their value well.)

 

###Concept

The idea for this Gem comes from the basic premise that a business should be doing three (3) things with their data.

    1: Measuring what happened   
    2. Predicting what will happen  
    3. Comparing competitor data. 

####1. Measuring
Measuring what happened, today, yesterday, this week, last month, last year and comparing those time frames in meaningful ways to steer the business.

####2. Predicting

Deducing from data measurements, the things that will likely happen in the future.

Knowing that your donut shop sells out of chocolate most Friday nights, compared to almost zero chocolate donut sales on most Monday nights, is a valuable insight. This can help cash flow, product freshness and strategic planning for adding more workers on Friday nights, if needed.

####3. Comparing
Leveraging business data to answer questions both past and future, is essential to any enterprise that measures itself. Comparison data incorporates other data sets into the past and future data so that the business can now answer deeper questions that simply "what happened?" or "what might happen?".


###TECHNICAL FLOW and FUNCTIONALITY in PianoSearch version 0.1.0

Main URLs:
The PianoSearch Gem 0.1.0 is statically coded to the Boston Craigslist Musical Instruments section. This is accomplished with 2 static URLs in 2 separate methods, for scraping the existing post headlines.

Use of Nokogiri

These URL's are scraped using Nokogiri and Open-Uri for both the initial post headlines and the subsequent post details.

Methods in class PianoSearch::Post

[self.scrape_clu1] 

    1. Scrapes the main URL for "Yamaha U1", saving results in the @posts array.

    2. Calls the self.scrape_posts method

[self.scrape_clp22]

    1. Scrapes the main URL for "Yamaha P22", saving results in the @posts array.

    2. Calls the self.scrape_posts method

[self.scrape_posts]

    1. Scrapes the @posts array to extract post_id for each post, to be used in creating its URL

    2. Calls the self.create_urls method

[self.create_urls] 

    1. Appends the post id to "http://boston.craigslist.org/"<post_ID>.html"

    2. Calls the self.show_headings method

[self.show_headings]

    1. PUTS out a row for each post, including a Post Number and Headline

[self.scrape_detail]

    1. Creates an array (@post_ary) of post hashes, including price, headline, location and description

[self.show_detail(input)]

    1. Takes in the users input choice as an index number

    2. Displays the appropriate post hash corresponding to the user input number

 

###Methods and Functionality of PianoSearch::CLI
class PianoSearch::CLI workflow
call
    start
        puts "🎹  Welcome to Boston Craigslist Piano Search 🎹"
        puts "Please enter model number u1 or p22"    
            menu shows list of posts for model chosen
                p22 -- or --  u1
                      u1
                      PianoSearch::Post.scrape_clu1
                      PianoSearch::Post.show_headings
 
                      p22
                      PianoSearch::Post.scrape_clp22
                      PianoSearch::Post.show_headings

  menu method:
    count = PianoSearch::Post.scrape_posts.count (uses count of posts, to limit valid input choices)
    puts "Enter [digit] for details, [list] for list, or [exit]."
    PianoSearch::Post.scrape_detail (this is run to produce detailed post hashes)
    Menu options:
      list (calls start)
      exit (calls goodbye)
      else (invalid entry)
      goodbye (puts "🎹 Thank you for searching 🎹")
      user input (number) is passed to:
        PianoSearch::Post.show_detail(input.to_i-1)
            self.show_detail(input)]
                1. Takes in the users input choice as an index number
                2. Displays the appropriate post hash corresponding to the user input number including price, headline, location and description.

###EXAMPLE:
--------------------------------------------------------------------------------
$2250  Beautiful Yamaha Piano   (Stoughton)

Piano is a gorgeous Polished Walnut and looks like it has just come from the factory (made in Thomaston, Georgia). One owner, lightly driven by a little old lady. :) Purchased new from Boston Organ and Piano in 1996, Model P22, Serial Number 210067. Includes piano bench - bench has a few dings.

🎹🎹🎹🎹


Future Functionality
Added functionality will include:

1. Choice of user State and Area within that U.S. State to replace the static URL's in current version

   NOTE: Areas are represented by 3 letters immediately preceding the post_id. States are not directly represented in URLs.  The syntax is as follows:   

   "http://[state_area].craigslist.org/[3 letter area acronym]/[10 digit post_id].html"

2. Use of Ruby Gem: Pony or Mail to provide the user the option of having the search sent daily in email.

3. Expanded details, including DateTime posted, geo-coordinates for GoogleMaps and other post details

4. Reply to capture, providing the foundation for automated outreach to ads proposing to buy the pianos at a pre-determined fraction of the price, assuming they pass onsite inspection by a qualified technician.

5. Pushing of this list, to pre-qualified buyers, seeking pianos. This would augment the business of a technician or piano mover, intent on generating new opportunities for technical work or moving.

6. Expansion of options to include national search.

7. Expansion of options to choose additional sections for searching.

8. Combination with related scraping projects, such as:

    - promotion of music instruction

    - organizations in need of donated pianos

    - "make a wish" types of opportunities to provide a piano for a talented child in a low-income family

##Conclusion

Everyone ought to have some music (and some Ruby) in their life!