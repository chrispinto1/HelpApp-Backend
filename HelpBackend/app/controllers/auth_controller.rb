class AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {errors: "Login Failed"}
    end
  end

  def auto_login
    user = User.find(request.headers["Authorization"])
    if user
      render json: user
    else
      render json: {errors: "Not in db"}
    end
  end

end
