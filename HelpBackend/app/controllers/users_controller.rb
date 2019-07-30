class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(name: params[:name],username: params[:username], password: params[:password] ,credit_card: params[:credit_card])

    if user.save
      render json: user
    else
      render json: {erros: user.errors.full_messages}
    end
  end

  def delete
    user = User.find_by(params[:id]).delete
  end
end
