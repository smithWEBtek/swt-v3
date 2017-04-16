class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all 
  end

  def show
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post), message: "Post updated."
    else
      render :edit, message: "Post NOT updated, please try again."
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post), message: "Post created."
    else
      render :new, message: "Post NOT created, please try again."
    end
  end

  def destroy
    @post.delete
    redirect_to posts_path
  end

  private
    def set_post
      @post = Post.find_by_id(params[:id])
    end

    def post_params
      params.require(:post).permit(:repo, :date, :title, :outline, :body, :summary, :tweet, :refs)
    end
end
