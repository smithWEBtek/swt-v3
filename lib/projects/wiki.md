
=======================================================
TECH CURATION App (wiki)

Learn github API while building smithwebtek wiki
Create github 'gist' for articles

Stop using Markdown files for posts, instead use html.erb files
Use a template for sample_post.html.erb
Feed the template from the wiki database

Post:
1. Create an HTML template for post. 
2. /posts/show has the layout and surrounding web parts
3. Create github gist for each code sample


Technical Knowledge workflow: Bookmark => Entry => HelloWorld => App => Blog
  Bookmark 
    Capture every thing in chrome bookmarks
    Auto-export bookmarks to wiki
		Wiki entry includes end up with 1 or all of these:
			* entry in Wiki (minimum)
			* tag(s) 0 to multiple
			* hello world tutorial
			* project
			* demo app
			* blog post
		
		Data model:
			tag:	id, name
				ex:	javascript, ruby, regex, node, react, css, error handling, linter, editor,  

			entry:	id, name, description
				has_many :tags
				has_many :apps, through: :tags
				
			project:	id, name, description, repo, url
				has_many :tags
				has_many :entries, through: :tags
					
			post:	id, name, description, repo, url

			group: id, name, description
				has_many :tags
				has_many :apps, through: :tags
				has_many :entries, through: :tags

Javascript
	React
	Redux
	Vue
	Node

Ruby
	ref
	tool
	pattern


  2: wiki: 
    categorize and store in this wiki
    use Cloudinary to store related files if needed
    follow wiki structure
    connect it to other wiki categories/groups/topics via tags
  3: hello world: 
    do the hello world first excersize with this topic
    make it actually work, use it as intended, do an example
    save the example (code, files, ideas, configurations, urls, passwords, API keys, etc.) in a format that will refresh your mind when you find it again in the future

  4: blog post about learning it
  5: go deeper in a project with it
=======================================================
  