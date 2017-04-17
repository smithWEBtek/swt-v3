class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all 
  end

  def show
    @groups = Group.all
  end

  def new
    @group = Group.new
  end
  
  def edit
  end

  def update
    @group.update(group_params)
    if @group.save
      redirect_to group_path
    else
      render :edit, message: "Group NOT updated, please try again."
    end
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path, message: "Group created."
    else
      render :new, message: "Group NOT created, please try again."
    end
  end

  def destroy
    @group.delete
    redirect_to groups_path
  end

  private
    def set_group
      @group = Group.find_by_id(params[:id])
    end

    def group_params
      params.require(:group).permit(:name)
    end
end

