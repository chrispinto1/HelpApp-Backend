class DonationsController < ApplicationController

  def index
    donations = Donation.all
    render json: donations.to_json(:include => {
      :user => {:only => [:id, :name, :username]},
      :event => {:except => [:updated_at]}
      })
  end
end
