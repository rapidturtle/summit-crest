class UsersController < ApplicationController
  before_filter :authenticate!
  
  def index
    @users = User.order('email')
  end
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path, :notice => "User created successfully."
    else
      render :new
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path, :notice => "User updated successfully."
    else
      render :edit
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    if @user == current_user
      flash[:alert] = "I can't delete your account if you're signed in, silly."
    else
      @user.destroy
    end
    redirect_to users_path
  end
end
