class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    if @user.save
      redirect_to root_url,
      flash[:notice] =>  "User details updated successfully"
    else
      render 'edit'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:phone)
  end
end
