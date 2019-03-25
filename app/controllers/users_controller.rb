class UsersController < ApplicationController
  def login
    @user = User.find_by(user_email: params[:user][:email])
    puts @user
    if @user.valid? && @user.authenticate(params[:user][:password])
        render json: @user
    end

  end


  def create
    @newUser = User.create(userParams)
    render json: @newUser
  end

  private
  def userParams
    params.require(:user).permit(:user_name, :first_name, :last_name, :user_email, :password)
  end

end
