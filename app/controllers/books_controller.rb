class BooksController < ApplicationController
	before_action :set_book, only: [:show, :edit, :update, :destroy]
 
	def index
		@books = Ref.all.where(format: 'pdf')
		# @categories = Book.categories
	end

	def show
		@books = Ref.all.where(format: 'pdf')
	end

	def new
		@book = Book.new
	end
	
	def edit
binding.pry

	end

	def update
		@book.update(book_params)
		if @book.save
			redirect_to book_path
		else
			render :edit, message: "Book NOT updated, please try again."
		end
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to books_path, message: "Book created."
		else
			render :new, message: "Book NOT created, please try again."
		end
	end

	def destroy
		@book.delete
		redirect_to books_path
	end

	private
		def set_book
			@book = Book.find_by_id(params[:id])
		end

		def book_params
			params.require(:book).permit(:bm_id, :bm_dateAddedLocal, :bm_dateAddedUTC, :bm_index, :bm_parentId, :bm_title, :bm_url)
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
	