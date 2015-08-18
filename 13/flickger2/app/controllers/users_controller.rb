class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, success: "user created!"
    else
      render :new
    end
  end

  def edit 
    @user_id = params[:id]
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to users_path
      flash[:success] = "User Created"
    else
    end
  end

  def show
    render text: "The user id is: #{params[:id]}"
  end

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end
end
