class UsersController < ApplicationController
  def login
    @user = user.find(params[:user])

  end
  def create
    puts params
    newUser = User.create(userParams)
    puts newUser
  end
  private
  def userParams
    params.require(:user).permit(:user_name, :first_name, :last_name, :user_email, :password)
  end

end
