class StaticController < ApplicationController
  layout false, only: [:index2]
	
	def asdf
		@file = "asdf.md"
		@path = '/lib/notes/'
		render '/static/draft.html.erb' 
	end
	
	def zxcv
		@file = "post-sg-oo-triangle.md"
		@path = '/lib/posts/'
		render '/static/draft.html.erb', layout: false
	end

  def qwer
    @file = "qwer.md"
		@path = '/lib/notes/'
    render '/static/draft.html.erb', layout: false
  end


	def flatiron
		@bookmarks = Bookmark.all.where(category: 'flatiron')
		render '/static/flatiron.html.erb' 
	end

  def home
    render :home
  end

  def about
    render :about
  end
 
  def home
    render :home
  end

  def contact
    render :contact
  end
  
  def projects
    render :projects
  end
  
  def wiki
    render :wiki
  end
  
  def blog
    redirect_to posts_path
  end
end
