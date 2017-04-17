class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.all 
  end

  def show
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end
  
  def edit
  end

  def update
    @topic.update(topic_params)
    if @topic.save
      redirect_to topic_path
    else
      render :edit, message: "Topic NOT updated, please try again."
    end
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path, message: "Topic created."
    else
      render :new, message: "Topic NOT created, please try again."
    end
  end

  def destroy
    @topic.delete
    redirect_to topics_path
  end

  private
    def set_topic
      @topic = Topic.find_by_id(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:name)
    end
end


