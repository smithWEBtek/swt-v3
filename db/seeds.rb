DATA_groups ={
 :group_keys =>
    ["name"],
  :groups => [
    ["front-end"],["rails"],["javascript"],["tools"],["reading"],["mentors"],["video"],["track"], 
  ]
}

def make_groups
  DATA_groups[:groups].each do |group|
    new_group = Group.new
    group.each_with_index do |attribute, i|
      new_group.send(DATA_groups[:group_keys][i]+"=", attribute)
    end
    new_group.save
  end
end


DATA_topics ={
 :topic_keys =>
    ["name"],
  :topics => [
    ["ruby"],["rails"], ["javascript"], ["scraping"] 
  ]
}

def make_topics
  DATA_topics[:topics].each do |topic|
    new_topic = Topic.new
    topic.each_with_index do |attribute, i|
      new_topic.send(DATA_topics[:topic_keys][i]+"=", attribute)
    end
    new_topic.save
  end
end

DATA_refs ={
 :ref_keys =>
    ["name", "format", "url", "content"],
  :refs => [
    ["diet-tracker-video", "video", "https://youtu.be/nGTIAKQ_uJk"],
    ["piano-search-video", "video", "https://www.youtube.com/embed/A_jb0Iv6pEE"],
    ["piano-student-cms-video", "video", "https://youtu.be/PjIlwuJX1Bw"],
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


DATA_users ={
 :user_keys =>
    ["username", "email", "password"],
  :users => [
    ["ned", "ned@abc.com", "pointer"],
    ["max", "max@abc.com", "pointer"],
    ["skai", "skai@abc.com", "pointer"],
    ["kaleo", "kaleo@abc.com", "pointer"],
    ["megan", "megan@abc.com", "pointer"],
    ["tenzing", "tenzing@abc.com", "pointer"],
    ["davis", "davis@abc.com", "pointer"],
    ["cole", "cole@abc.com", "pointer"],
    ["ted", "ted@abc.com", "pointer"],
    ["fred", "fred@abc.com", "pointer"]
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

DATA_posts ={
 :post_keys =>
    ["date", "title", "repo", "summary", "md_file"],
  :posts => [
    [ 
      "2017-04-12", 
      "Piano Search CLI", 
      "https://github.com/smithWEBtek/piano_search",
      "find a good piano", 
      "blog.md"
      ], 
    [ 
      "2016-03-12", 
      "Music Student Sinatra App", 
      "https://github.com/smithWEBtek/piano-teach2",
      "learn your tunes, practice every day", 
      "music-student.md"
      ], 
    [ 
      "2017-04-12", 
      "Diet Planner", 
      "https://github.com/smithWEBtek/diet-planner-v6",
      "eat growing things more than moving things", 
      "blog.md"
      ]
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
    ["user_id", "name", "business_model", "data_sources", "problem", "wishlist"],
  :projects => [
    ["1", "pool-service", "pool service company, 2 location, 7 trucks", 
      "too much manual paper shuffling", "online service scheduling"],
    
    ["2", "crash-data", "municipal govt data analysis", 
      "too many crashes", "find key points in data to prevent crashes"],
    
    ["3", "job-crm", "job seeker / graduate", 
      "no job", "get a job"],
    
    ["4", "goal-mgr", "professional person", 
      "spinning wheels, not focused", "everything in its place, and a time for every important thing"]
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
  make_groups
  make_topics
  make_refs
  make_users
  make_posts
  make_projects
end

main

