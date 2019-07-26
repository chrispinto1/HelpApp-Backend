class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.to_json(:include => {
      :donations => {:only => [:user_id, :event_id,:amount, :created_at]},
      :events => {:except => [:updated_at]}
      })
  end

  def create
    user = User.new(username: params[:username], password: params[:password])
    if user.save
      render json: user
    else
      render json: {erros: user.errors.full_messages}
    end
  end
end
