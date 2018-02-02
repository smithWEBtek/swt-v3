class StaticController < ApplicationController
  layout false, only: [:index2]

  def asdf
    @asdf = "asdf.md"
    render '/static/asdf.html.erb' 
  end

  def qwer
    @asdf = "qwer.md"
    render '/static/qwer.html.erb' 
  end

  def zxcv
    @asdf = "zxcv.md"
    render '/static/zxcv.html.erb' 
  end

  def assmt
    @asdf = "assmt.md"
    render '/static/assmt.html.erb' 
  end

  def about
    render :about
  end

  def bookmarks
    Scrape.bookmarks
   render :bookmarks
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
