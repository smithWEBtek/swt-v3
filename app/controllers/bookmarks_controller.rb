class BookmarksController < ApplicationController
		before_action :set_book_mark, only: [:show, :edit, :update, :destroy]
 
	def index
		@book_marks = Bookmark.all
	end

	def show
		@book_marks = Bookmark.all
	end

	def new
		@book_mark = Bookmark.new
	end
	
	def edit
	end

	def update
		@book_mark.update(book_mark_params)
		if @book_mark.save
			redirect_to book_mark_path
		else
			render :edit, message: "Bookmark NOT updated, please try again."
		end
	end

	def create
		@book_mark = Bookmark.new(book_mark_params)
		if @book_mark.save
			redirect_to book_marks_path, message: "Bookmark created."
		else
			render :new, message: "Bookmark NOT created, please try again."
		end
	end

	def destroy
		@book_mark.delete
		redirect_to book_marks_path
	end

	private
		def set_book_mark
			@book_mark = Bookmark.find_by_id(params[:id])
		end

		def book_mark_params
			params.require(:book_mark).permit(:bm_id, :bm_dateAddedLocal, :bm_dateAddedUTC, :bm_index, :bm_parentId, :bm_title, :bm_url)
		end
end
	