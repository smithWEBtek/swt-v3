class StaticController < ApplicationController
  layout false, only: [:index2]

  def qwer
    @file = "qwer.md"
		@path = '/lib/notes/'
    render '/static/draft.html.erb' 
  end

  def zxcv
    @file = "zxcv.md"
		@path = '/lib/notes/'
    render '/static/draft.html.erb' 
  end

	def asdf
		@file = "asdf.md"
		@path = '/lib/notes/'
    render '/static/draft.html.erb' 
  end

  def home
    render :home
  end

  def about
    render :about
  end

# every few weeks, export and replace the bookmarks.html file, (exported from Chrome)
# until you find a way to reach out to Chrome programatically
  def bookmarks
    Scrape.bookmarks
   render 'static/bookmarks'
  end

  def free_books
    Scrape.free_books
   render :free_books
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
