class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.to_json(:include => {
      :donations => {:only => [:user_id, :event_id,:amount, :created_at]},
      :events => {:except => [:updated_at]}
      })
  end
end
