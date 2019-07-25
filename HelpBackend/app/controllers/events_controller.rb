class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events.to_json(:include => {
      :user => {:only => [:id, :name, :username]},
      :donations => {:only => [:user_id, :event_id,:amount, :created_at]}
      })
  end
end
