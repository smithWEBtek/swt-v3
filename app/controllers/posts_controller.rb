class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize_admin, only: [:edit, :update, :destroy, :create]

  def index
    @posts = Post.all 
    @post = Post.last
  end

  def show
    @posts = Post.all
    @refs = @post.refs
  end

  def new
    @post = Post.new
  end
  
  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path
    else
      render :edit, message: "Post NOT updated, please try again."
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.ref_ids
      @post.ref_ids.each {|ref_id| PostRef.create(post_id: @post.id, ref_id: ref_id)}
      if @post.save
        redirect_to posts_path, message: "Post created."
      else
        render :new, message: "Post NOT created, please try again."
      end
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
      params.require(:post).permit(:date, :title, :repo, :video_url, :summary, :md_file, ref_ids: [])
    end
end
