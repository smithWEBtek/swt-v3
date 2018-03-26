class BookmarksController < ApplicationController
		before_action :set_bookmark, only: [:show, :edit, :update, :destroy]
 
	def export_csv
		@bookmarks = Bookmark.all 
		render 'bookmarks/index.csv.erb'
	end

	def index
		# @bookmarks = Bookmark.all
		# @categories = Category.all
		@categories = Category.tek_only
	end
  
	def show
		@bookmarks = Bookmark.all
	end

	def new
		@bookmark = Bookmark.new
	end
	
	def edit
	end

	def update
		@bookmark.update(bookmark_params)
		if @bookmark.save
			redirect_to bookmark_path
		else
			render :edit, message: "Bookmark NOT updated, please try again."
		end
	end

	def create
		@bookmark = Bookmark.new(bookmark_params)
		if @bookmark.save
			redirect_to bookmarks_path, message: "Bookmark created."
		else
			render :new, message: "Bookmark NOT created, please try again."
		end
	end

	def destroy
		@bookmark.delete
		redirect_to bookmarks_path
	end

	private
		def set_bookmark
			@bookmark = Bookmark.find_by_id(params[:id])
		end

		def bookmark_params
			params.require(:bookmark).permit(:category_id, :bm_id, :bm_dateAddedLocal, :bm_dateAddedUTC, :bm_index, :bm_parentId, :bm_title, :bm_url)
		end

		def sortable_columns
			["title"]
		end
	
		def sort_column
			sortable_columns.include?(params[:column]) ? params[:column] : "title"
		end
	
		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
end
	