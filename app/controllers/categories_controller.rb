class CategoriesController < ApplicationController
	before_action :set_category, only: [:show, :edit, :update, :destroy]
 
	def index
		@categories = Category.all
	end

	def show
		@categories = Category.all
	end

	def new
		@category = Category.new
	end
	
	def edit
	end

	def update
		@category.update(category_params)
		if @category.save
			redirect_to category_path
		else
			render :edit, message: "Category NOT updated, please try again."
		end
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to categories_path, message: "Category created."
		else
			render :new, message: "Category NOT created, please try again."
		end
	end

	def destroy
		@category.delete
		redirect_to categories_path
	end

	private
		def set_category
			@category = Category.find_by_id(params[:id])
		end

		def category_params
			params.require(:category).permit(:name, :chrome_bookmark_id, bookmark_ids: [])
		end
end
