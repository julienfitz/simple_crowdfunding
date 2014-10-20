class DonationsController < ApplicationController
  before_action :set_donation, only: [:show]

  def index
    @donations = Donation.all
    @charge = Charges.new
  end


  def show
  end

  def create
    @donation = Donation.new(donation_params)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:level, :price, :level_descrip)
    end
end
