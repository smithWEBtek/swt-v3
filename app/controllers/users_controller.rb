class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all 
  end

  def show
  end

  def new
    @user = User.new
  end
  
  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user), message: "User updated."
    else
      render :edit, message: "User NOT updated, please try again."
    end
  end

  def create
raise params.inspect

    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user), message: "User created."
    else
      render :new, message: "User NOT created, please try again."
    end
  end

  def destroy
    @user.delete
    redirect_to users_path
  end

  private
    def set_user
      @user = User.find_by_id(params[:id])
    end

    def user_params
      params.require(:user).permit(:company, :about, :first_name, :last_name, :email, :username, :password, :phone, :website, :address, :city, :state, :zip, :role )
    end
end
