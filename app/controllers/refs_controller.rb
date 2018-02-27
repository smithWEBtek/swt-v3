class RefsController < ApplicationController
  before_action :set_ref, only: [:show, :edit, :update, :destroy]
	helper_method :sort_column, :sort_direction

 
	def index
		@refs = Ref.order("#{sort_column} #{sort_direction}")
    # @refs = Ref.all 
    @mentors = Ref.all.where(format: "mentor")
    @books = Ref.all.where(format: "pdf")
    @bookmarks = Ref.all.where(format: "bookmark")
  end

	def show
		if @ref.format === 'pdf'
			url = Rails.root + "app/assets/books/" + @ref.category + @ref.title
			send_file(url, disposition: "inline", type: "application/pdf")
   	end
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
		
		def sortable_columns
			["title", "category", "format"]
		end
	
		def sort_column
			sortable_columns.include?(params[:column]) ? params[:column] : "name"
		end
	
		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
end


