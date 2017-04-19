class StaticController < ApplicationController

#   def upload("/assets/images/msbi.png")
# bindind.pry
#     self.upload
#     redirect_to root_path
#   end



#   def upload
# binding.pry
#     uploader = Cloudinary.upload("/assets/images/msbi.png")
#   end


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

  def about
    render :about
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
