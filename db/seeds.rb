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
    ["TUTS+", "mentor", "#", "contents of video6" ],

    ["An Updated Summary of The 12 Celestine Insights.docx", "book", "#", "book-content"],
    ["Badass - Making Users Awesome.pdf", "book", "#", "book-content"],
    ["Begining Database Design.pdf", "book", "#", "book-content"],
    ["Beginning T-SQL 2008 R2.pdf", "book", "#", "book-content"],
    ["Beginning T-SQL 2012 brad.pdf", "book", "#", "book-content"],
    ["Beginning T-SQL 2012.pdf", "book", "#", "book-content"],
    ["bootstrapant1.pdf", "book", "#", "book-content"],
    ["c programming.pdf", "book", "#", "book-content"],
    ["Ecma-262.pdf", "book", "#", "book-content"],
    ["Eloquent Ruby.pdf", "book", "#", "book-content"],
    ["Eloquent_JavaScript.pdf", "book", "#", "book-content"],
    ["Git.pdf", "book", "#", "book-content"],
    ["growing-rails.pdf", "book", "#", "book-content"],
    ["Introduction.to.Algorithms.3rd.Edition.Sep.2010.pdf", "book", "#", "book-content"],
    ["James Redfield - The Celestine Prophecy.pdf", "book", "#", "book-content"],
    ["koans", "book", "#", "book-content"],
    ["Learn To Program - Chris Pine.pdf", "book", "#", "book-content"],
    ["Mastery-George-Leonard.pdf", "book", "#", "book-content"],
    ["MindForNumbers-summary.pdf", "book", "#", "book-content"],
    ["MindForNumbers.pdf", "book", "#", "book-content"],
    ["Mindset-The New Psychology of Success.pdf", "book", "#", "book-content"],
    ["POODR.pdf", "book", "#", "book-content"],
    ["ProgrammingRuby-4thEd Pragmatic Programmers Guide.pdf", "book", "#", "book-content"],
    ["ProgramStudyGuide.pdf", "book", "#", "book-content"],
    ["Refactoring_Ruby Edition.pdf", "book", "#", "book-content"],
    ["Refactoring.pdf", "book", "#", "book-content"],
    ["ruby_programming_language.pdf", "book", "#", "book-content"],
    ["ruby-NXPowerLite.pdf", "book", "#", "book-content"],
    ["ruby-pocket-ref.pdf", "book", "#", "book-content"],
    ["Speaking JS.pdf", "book", "#", "book-content"],
    ["sql_server_2012.pdf", "book", "#", "book-content"],
    ["TechInterview.pdf", "book", "#", "book-content"],
    ["The Speed of Dark.pdf", "book", "#", "book-content"],
    ["Well_Grounded_Rubyist.pdf", "book", "#", "book-content"]
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
      "001-career-change.md"
      ], 
    [ 
      "2017-04-12", 
      "Piano Search CLI",
      "https://github.com/smithWEBtek/piano_search",
      "https://www.youtube.com/embed/A_jb0Iv6pEE",
      "", 
      "scrape Craigslist for 2 specific models of Yamaha piano", 
      "002-piano-search.md"
      ], 
    [ 
      "2016-03-12", 
      "Music Student CMS", 
      "https://github.com/smithWEBtek/piano-teach2",
      "https://www.youtube.com/embed/-gYpibTzQH8?rel=0",
      "",
      "Sinatra app for managing teachers and students", 
      "003-music-student.md"
      ], 
    [ 
      "2017-04-12", 
      "Diet Planner v6 Rails app",
      "https://github.com/smithWEBtek/diet-planner-v6",
      "https://www.youtube.com/embed/nGTIAKQ_uJk",
      "",
      "eat growing things more than moving things", 
      "004-diet-tracker.md"
      ],
    [ 
      "2017-05-07",
      "Diet Planner v8 Rails - jQuery",
      "https://github.com/smithWEBtek/diet-planner-v8",
      "https://www.youtube.com/embed/YT8r_w4AifI",
      "https://diet-planner-v8.herokuapp.com/",
      "Rails API w/ jQuery, AJAX, JSON front end", 
      "005-diet-planner-v8.md"
    ],
    [ 
      "2018-01-19",
      "Music Studio - Rails API - React/Redux",
      "https://github.com/smithWEBtek/piano-student-api",
      "https://www.youtube.com/embed/Mm1hf_AJSsY",
      "https://music-studio.herokuapp.com/",
      "Rails API w/ JavaScript/React/Redux front end", 
      "006-music-studio.md"
    ],
    [
      # ["date", "title", "repo", "video_url", "site_url", "summary", "content_md"],
      "2018-01-23",
      "Habits of A Successful Developer",
      "",
      "",
      "",
      "Do some of these things", 
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
     "municipal govt data analysis",
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
     "http://res.cloudinary.com/smithwebtek/image/upload/v1516500349/music-studio/music-student_pnmwbr.png"]
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

def main
  make_tags
  make_refs 
  make_posts
  make_projects
end

main
