class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(User_params)

    if @user.save
      redirect_to  users_path, flash: { success: "User Added!" }
    else
      render :new
    end
  end

end
