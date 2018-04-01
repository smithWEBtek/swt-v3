
# Lab Walkthru: Hitting APIs with Faraday

## Getting started: Prepare with the previous lab: [APIs and Postman](https://learn.co/tracks/full-stack-web-development-v4/rails-and-javascript/consuming-apis/apis-and-postman)

1. Read the [Foursquare API documentation](https://developer.foursquare.com/docs/api/endpoints) to find the API endpoint you need.
2. Create a [FourSquare developer app and get your credentials](https://foursquare.com/developers/apps)
3. Store your Foursquare credentials locally, but NOT on Github, here are 2 options for it: 
	- OPTION 1: Use this [config/secrets.yml file blog post](https://blog.arkency.com/2017/07/how-to-safely-store-api-keys-in-rails-apps/) to store your credentials in config/secrets.yml
	- OPTION 2: Use this [dotenv gem blog post](https://medium.com/@rmcneely/exploring-the-dotenv-gem-a-handy-guide-20a0d7541883) to store your credentials using DOTENV gem
4. Install [Postman API tool](https://www.getpostman.com/)
	-	Download, install and create your free Postman account
	- Use Postman to take your API endpoints and credentials for a test drive
	-	Use Postman to save your selected [ENDPOINT](https://developer.foursquare.com/docs/api/venues/details) searches in convenient folders
5. Install [JSON view Chrome extension](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc) to see the raw data at a formatted API url
	- By the way, what is an ENDPOINT? These links display JSON data in your browser:
		- example, music students: [https://music-studio.herokuapp.com/api/students/](https://music-studio.herokuapp.com/api/students/)
		- example, sample of github repos: [https://api.github.com/users/smithWEBtek/repos](https://api.github.com/users/smithWEBtek/repos)
6. Try **cURL** at the command line to quickly checkout an API endpoint
	- copy this into your command line and hit enter:

			curl https://api.github.com/users/smithwebtek/repos
		 
		 ..or..
			
			curl https://api.github.com/users/YOUR_GITHUB_USERNAME/repos

	- You will see a sample list of your repos, sorted alphabetically by repo name
	- Try copying a Postman formatted query string, pasted in to command line with `cURL` syntax	
	- Here are some cURL resources to learn more: 
		- [how-to-test-a-rest-api-from-command-line-with-curl](http://www.codingpedia.org/ama/how-to-test-a-rest-api-from-command-line-with-curl/)
		- [curl:// documentation](https://curl.haxx.se/)

## Lab walkthru
- Format your [Faraday](https://github.com/lostisland/faraday) request object
- Find venues by zipcode and query search terms
- Create a list of results
- Show the user the list of results, with links to get more details
- Create a controller action to receive params from the user via the view (search form)
- **Venue Details:** Format and send a new API request for Venue Details (using a venue_id retrieved in our first API request), and return the new results to the User
	- Parse the response you get in your controller
	- Make the new data available to your view with an instance variable
- **Venue Photos:** Format and send a new API request for Venue Photos (using a venue_id retrieved in our first API request), and return the new results to the User
	- Parse the response you get in your controller
	- Make the new data available to your view with an instance variable
- **Venue Photos count:** Format and send a new API request for Venue Photos count (using a venue_id retrieved in our first API request), and return the new results to the User
	- Parse the response you get in your controller
	- Make the new data available to your view with an instance variable


## Resources
- Learn about [Socrata](https://dev.socrata.com) and [Socrata endpoints](https://dev.socrata.com/docs/endpoints.html)

- [Cambridge Open Data portal](http://www.cambridgema.gov/departments/opendata), for the city of Cambridge, MA. The [Civic-Innovation-Challenge](https://data.cambridgema.gov/General-Government/Civic-Innovation-Challenge-Inventory/x96z-hdnh) provides data sets with problem statements, so you can do prototype projects with API data, that will help somone out and build your resume references.

- Try [Cloudinary](https://cloudinary.com), for storing your images, files and videos for CDN quality retrieval within your production application. The free account constraints are very generous in terms of bandwidth and storage.
- for example: [cloudinary dashboard](https://cloudinary.com/console)
- Try [Soundcloud](https://developers.soundcloud.com/), for serving up custom audio files through an API.
- [Patron](http://toland.github.io/patron/)
Patron is a Ruby HTTP client library based on libcurl. It does not try to expose the full “power” (read complexity) of libcurl but instead tries to provide a sane API while taking advantage of libcurl under the hood.
- [Creating a custom API connector in Ruby
](https://www.youtube.com/watch?v=uJd53gt1w6s&feature=youtu.be)
Learn how to build a real world application that works with an outside API in a Ruby program while using the HTTParty Ruby gem. 
