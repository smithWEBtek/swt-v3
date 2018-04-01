class Category < ApplicationRecord
	has_many :books
	has_many :bookmarks
	has_many :tags
	has_many :posts
	has_many :refs
 
	 
	def self.tek_only
		non_tek = ["_ntwk", "_accts", 
		"trilogy", "misc", "port", "_//", "//", "_career", "_hku", 
		"_job", "_learn-videos", "Aida", "bands", "cirque", 
		"flatiron", "glasses", "listen", "mainstage", "Network", "recruiter", 
		"technical-coach", "wework",
		"videos",
		"_mentors",
		"Listen"
	]
		@tek_categories = []
		Category.all.each do |c|
			@tek_categories.push(c) unless non_tek.include?(c.name)
		end
		@tek_categories.sort {|c| c.name.downcase<=>c.name.downcase}
	end
end
