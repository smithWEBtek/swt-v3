class RefsController < ApplicationController
  before_action :set_ref, only: [:show, :edit, :update, :destroy]

  def index
    @refs = Ref.all 
  end

  def show
    @refs = Ref.all
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

  private
    def set_ref
      @ref = Ref.find_by_id(params[:id])
    end

    def ref_params
      params.require(:ref).permit(:name, :format, :url, :content, :topic_id)
    end
end


