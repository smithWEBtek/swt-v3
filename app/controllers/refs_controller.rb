class RefsController < ApplicationController
  before_action :set_ref, only: [:show, :edit, :update, :destroy]

  def index
    @refs = Ref.all 
    @mentors = Ref.all.where(format: "mentor")
    @videos = Ref.all.where(format: "video")
    @books = Ref.all.where(format: "book")
    @bookmarks = Ref.all.where(format: "bookmark")
    @docs = Ref.all.where(format: "doc")
    @pdfs = Ref.all.where(format: "pdf")
  end

  def show
    @refs = Ref.all
  end

  def new
    @ref = Ref.new
  end
  
  def edit
  end

  def update
    @ref.update(ref_params)
    if @ref.save
      redirect_to ref_path
    else
      render :edit, message: "Ref NOT updated, please try again."
    end
  end

  def create
    @ref = Ref.new(ref_params)
    if @ref.save
      redirect_to refs_path, message: "Ref created."
    else
      render :new, message: "Ref NOT created, please try again."
    end
  end

  def destroy
    @ref.delete
    redirect_to refs_path
	end
	

# every few weeks, export and replace the bookmarks.html file, (exported from Chrome)
# until you find a way to reach out to Chrome programatically
def bookmarks
 render 'static/bookmarks'
end

def scrape_bookmarks
	Scrape.bookmarks
 render 'static/bookmarks'
end

def scrape_books
	Scrape.books
 render 'static/bookmarks'
end

def free_books
	Scrape.free_books
 render :free_books
end


  private
    def set_ref
      @ref = Ref.find_by_id(params[:id])
    end

    def ref_params
      params.require(:ref).permit(:name, :format, :url, :content)
    end
end


