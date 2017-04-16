class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all 
  end

  def show
  end

  def new
    @project = Project.new
  end
  
  def edit
  end

  def update
    @project.update(project_params)
    if @project.save
      redirect_to project_path(@project), message: "Project updated."
    else
      render :edit, message: "Project NOT updated, please try again."
    end
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project), message: "Project created."
    else
      render :new, message: "Project NOT created, please try again."
    end
  end

  def destroy
    @project.delete
    redirect_to projects_path
  end

  private
    def set_project
      @project = Project.find_by_id(params[:id])
    end

    def project_params
      params.require(:project).permit(:user_id, :title, :summary, :business_description, :current_solution, :data_sources, :data_sample1, :data_sample2, :data_sample3, :data_view1, :data_view2, :data_view3 )
    end
end
