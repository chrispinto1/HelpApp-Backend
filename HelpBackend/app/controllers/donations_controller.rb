class DonationsController < ApplicationController

  def index
    donations = Donation.all
    donation = Donation.find_by(campaign_id: params[:campaign])
    render json: donations
  end


  def create
  donation= Donation.create(user_id: params[:user_id], campaign_id: params[:campaign_id], amount: params[:amount])
  campaign = Campaign.find(params[:campaign_id])
  campaign.update(raised_donation: campaign.raised_donation + params[:amount])
  render json: {donation: donation, campaign: campaign}
  end

end
