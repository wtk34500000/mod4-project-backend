class Api::AuthController < ApplicationController
    def create

      @user = User.find_by(user_email: params[:user][:email])
    
      if @user && @user.authenticate(params[:user][:password])
        token = JWT.encode({ user_id: @user.id }, "secret")
        render json: { user: @user, jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
  
    def show
      jwt = request.headers['Authorization']
      id = JWT.decode(jwt, "secret")[0]["user_id"]
      @user = User.find(id)
      render json: {user: @user}
  
    end
  end