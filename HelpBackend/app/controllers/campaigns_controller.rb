class CampaignsController < ApplicationController

  def index
    campaigns = Campaign.all
    render json: campaigns
  end

  def create
    byebug
    campaign = Campaign.create(title: params[:title], description: params[:description], goal: params[:goal], end_date: params[:end_date], raised_donation: 0, active: true)

    if campaign.save
      render json: campaign
    else
      render json: {errors: "Please fill out each field"}
    end
  end
end
