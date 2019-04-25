

class UsersController < ApplicationController
#   def login
#     @user = User.find_by(user_email: params[:user][:email])
#     if @user.valid? && @user.authenticate(params[:user][:password])
#         render json: @user
#     end
#   #   @user = User.find_by(user_email: params[:user][:email])
#   #   if @user && @user.authenticate(params[:user][:password])
#   #     @token = JWT.encode({ user_id: @user.id }, "secret")
#   #     render json: { user: @user.id, jwt: @token }, status: :accepted
#   #   else
#   #     render json: { message: 'Invalid email or password' }, status: :unauthorized
#   #  end
#  end


  def create
    puts params
    puts userParams
    @newUser = User.create(userParams)
    #  render json: @newUser

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
