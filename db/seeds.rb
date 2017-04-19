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
      "blog.md"
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
  make_users
  make_posts
  make_projects
end

main

