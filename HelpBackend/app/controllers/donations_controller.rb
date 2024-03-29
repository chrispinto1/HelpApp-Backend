class DonationsController < ApplicationController

  def index
    donations = Donation.all
    render json: donations
  end


  def create
    donation = Donation.create(user_id: params[:user_id], campaign_id: params[:campaign_id], amount: params[:amount])
    campaign = Campaign.find(params[:campaign_id])
    campaign.update(raised_donation: campaign.raised_donation + params[:amount])
    render json: {donation: DonationSerializer.new(donation), campaign: CampaignSerializer.new(campaign)}
  end

end
