DATA_tags ={
 :tag_keys =>
    ["name"],
  :tags => [
    ["ruby"],["rails"], ["javascript"], ["scraping"] 
  ]
}

def make_tags
  DATA_tags[:tags].each do |tag|
    new_tag = Tag.new
    tag.each_with_index do |attribute, i|
      new_tag.send(DATA_tags[:tag_keys][i]+"=", attribute)
    end
    new_tag.save
  end
end
 
DATA_refs ={
 :ref_keys =>
    ["title", "category", "format", "url", "description"],
  :refs => [
    ["video1", "video", "#", "contents of video1" ],
    ["video2", "video", "#", "contents of video2" ],
    ["video3", "video", "#", "contents of video3" ],
    ["video4", "video", "#", "contents of video4" ],
    ["video5", "video", "#", "contents of video5" ],
    ["video6", "video", "#", "contents of video6" ],

    ["DerekBanas", "mentor", "#", "fast, succinct dev of all" ],
    ["MacKenzieChild", "mentor", "#", "med pace webdev and design" ],
    ["Uncle Bob", "mentor", "#", "computer science, programming, philosophy" ],
    ["Build Blog", "mentor", "#", "contents of video6"],
    ["Traversy Media", "mentor", "https://www.youtube.com/user/TechGuyWeb", "web dev:HTML/CSS, JavaScript, PHP, RoR"],
    ["CodeAcademy", "mentor", "https://www.youtube.com/user/TechGuyWeb", "online school" ],
    ["TUTS+", "mentor", "#", "contents of video6" ]
  ]
}

def make_refs
  DATA_refs[:refs].each do |ref|
    new_ref = Ref.new
    ref.each_with_index do |attribute, i|
      new_ref.send(DATA_refs[:ref_keys][i]+"=", attribute)
    end
    new_ref.save
  end
end
 
DATA_posts ={
 :post_keys =>
    ["date", "title", "repo", "video_url", "site_url", "summary", "content_md", "content_html"],
  :posts => [
    [ 
      "2016-01-12", 
      "Why Learn To Code?", 
      "",
      "",
      "",
      "limitations of physical work vs unlimited opportunities with coding", 
      "001-career-change.md", 
      "001-career-change.html" 
      ], 
    [ 
      "2017-04-12", 
      "Piano Search CLI",
      "https://github.com/smithWEBtek/piano_search",
      "https://www.youtube.com/embed/A_jb0Iv6pEE",
      "", 
      "scrape Craigslist for 2 specific models of Yamaha piano", 
      "002-piano-search.md",
      "002-piano-search.html"
      ], 
    [ 
      "2016-03-12", 
      "Music Student CMS", 
      "https://github.com/smithWEBtek/piano-teach2",
      "https://www.youtube.com/embed/-gYpibTzQH8?rel=0",
      "",
      "Sinatra app for managing teachers and students", 
      "003-music-student.md",
      "003-music-student.html"
      ], 
    [ 
      "2017-04-12", 
      "Diet Planner v6",
      "https://github.com/smithWEBtek/diet-planner-v6",
      "https://www.youtube.com/embed/nGTIAKQ_uJk",
      "",
      "eat growing things more than moving things", 
      "004-diet-tracker.md"
      ],
    [ 
      "2017-05-07",
      "Diet Planner v8",
      "https://github.com/smithWEBtek/diet-planner-v8",
      "https://www.youtube.com/embed/YT8r_w4AifI",
      "https://diet-planner-v8.herokuapp.com/",
      "Rails API w/ jQuery, AJAX, JSON front end", 
      "005-diet-planner-v8.md"
    ],
    [ 
      "2018-01-19",
      "Music Studio",
      "https://github.com/smithWEBtek/piano-student-api",
      "https://www.youtube.com/embed/Mm1hf_AJSsY",
      "https://music-studio.herokuapp.com/",
      "Rails API w/ JavaScript/React/Redux front end", 
      "006-music-studio.md"
    ],
    [
      # ["date", "title", "repo", "video_url", "site_url", "summary", "content_md"],
      "2018-01-23",
      "Habits",
      "",
      "",
      "",
      "Habits of a successful developer", 
      "007-habits.md"
    ]
    # [
    # # ["date", "title", "repo", "video_url", "site_url", "summary", "content_md"],
    #   "2018-01-22",
    #   "How to build project seed data",
    #   "",
    #   "",
    #   "",
    #   "Solid data is your project foundation.", 
    #   "008-project-data.md"
    # ]
  ]
}

def make_posts
  DATA_posts[:posts].each do |post|
    new_post = Post.new
    post.each_with_index do |attribute, i|
      new_post.send(DATA_posts[:post_keys][i]+"=", attribute)
    end
    new_post.save
  end
end

DATA_projects ={
 :project_keys =>
    ["name", "business_model", "data_sources", "problem", "wishlist", "url", "screenshot"],
		:projects =>  
		[
			["pool-service",
			"pool service company, 2 locations,7 trucks",
			"excel, quickbooks, csv files",
			"too much manual paper shuffling",
			"online service scheduling",
			"https://spc-v1.herokuapp.com",
			"http://res.cloudinary.com/smithwebtek/image/upload/v1516609033/swt/poolsvc_flvbfm.png"],
			
			
			["crash-data",
			"City of Cambridge, municipal data analysis",
			"api data, Cambridge Open Data portal",
			"too many crashes",
			"find key points in data to prevent crashes",
			"https://crash-data-v1.herokuapp.com/",
			"http://res.cloudinary.com/smithwebtek/image/upload/v1516609030/swt/crashdata_r63o4z.png"],
			
			
			["bst-trio",
			"musician site",
			"todo list, email, band info, venues",
			"message is not conveyed vividly enough to find our niche audience",
			"need the audience experience online",
			"http://bradsmithtrio.com/",
			"http://res.cloudinary.com/smithwebtek/image/upload/v1516609035/swt/bstrio_dvpuhf.png"],
			
			
			["piano-tech-site",
			"piano technician business site",
			"crm database, email, lists, excel, online schedule API",
			"user buying experience is too dry",
			"get personal sales process into digital experience",
			"http://smithpiano.com/",
			"http://res.cloudinary.com/smithwebtek/image/upload/v1516609034/swt/smithpiano_ny4dom.png"],
			
			
			["diet-planner",
			"your diet, foods, meals tracked in a friendly forum",
			"calorie data, user logs, lists, excel",
			"following diet, need support",
			"create pages to bond users struggling with diets",
			"https://diet-planner-v8.herokuapp.com/",
			"http://res.cloudinary.com/smithwebtek/image/upload/v1516609031/swt/diet-planner_oohyqk.png"],
			
			
			["music-studio",
			"CRM system for a music teaching studio",
			"teaching studio",
			"Teachers,Students, Resources, Lessons",
			"manage more students, and provide a richer learning experience",
			"https://music-studio.herokuapp.com/",
			"http://res.cloudinary.com/smithwebtek/image/upload/v1516500349/music-studio/music-student_pnmwbr.png"],
			
 
			["legal-housing",
			"City of Boston, housing listings",
			"housing listings, sample data sets of discriminatory phrases",
			"too often the city hears about discriminatory practices after they happen",
			"proactively find discriminatory housing listings, before constituents",
			"https://legalhousing.herokuapp.com//",
			"http://res.cloudinary.com/smithwebtek/image/upload/v1519153948/legalhousing_cf9zjr.png"]
		]
	}
	 
	def make_projects
		DATA_projects[:projects].each do |project|
			new_project = Project.new
			project.each_with_index do |attribute, i|
				new_project.send(DATA_projects[:project_keys][i]+"=", attribute)
			end
			new_project.save
  end
end

DATA_users ={
 :user_keys =>
		["first_name", "last_name", "email", "password", "password_confirmation"],
  :users => [
    ["Ned", "Ryerson", "ned@abc.com", "pointer", "pointer"],
    ["Ted", "Baxter", "ted@abc.com", "pointer", "pointer"],
    ["Fred", "Baker", "fred@abc.com", "pointer", "pointer"],
    ["Demo", "Demo", "demo@demo.com", "password", "password"]
  ]
}

def make_users
  DATA_users[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send(DATA_users[:user_keys][i]+"=", attribute)
    end
    new_user.save
  end
end

DATA_admin_users ={
 :admin_user_keys =>
    ["email", "password", "password_confirmation"],
  :admin_users => [
    ["admin@smithwebtek.com", "pointer", "pointer"],
    ["brad@smithwebtek.com", "pointer", "pointer"]
  ]
}

def make_admin_users
  DATA_admin_users[:admin_users].each do |admin_user|
    new_admin_user = AdminUser.new
    admin_user.each_with_index do |attribute, i|
      new_admin_user.send(DATA_admin_users[:admin_user_keys][i]+"=", attribute)
    end
    new_admin_user.save
  end
end

def main
  make_tags
	make_refs
	Scrape.bookmarks
	# Scrape.gitbooks
  make_posts
	make_projects
	make_users
	make_admin_users
end

main
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?