class UsersController < ApplicationController

  def create
    puts params
    puts userParams
    @newUser = User.create(userParams)
    if @newUser.valid?
      token = JWT.encode({user_id: @newUser.id}, "secret")
      render json: { user: @newUser, jwt: token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private
  def userParams
    params.require(:user).permit(:user_name, :first_name, :last_name, :user_email, :password)
  end

end
