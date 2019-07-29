class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(username: params[:username], password: params[:password] ,credit_card: params[:credit_card])

    if user.save
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {erros: user.errors.full_messages}
    end
  end

  def delete
    user = User.find_by(params[:id]).delete
  end
end
