class Charges < ActiveRecord::Base

  has_one :donation

  def self.levels_for_dropdown
    donation_levels = Donation.all.collect do |donation|
      ["#{donation.level} - $#{donation.price}", donation.id]
    end
  end

  def self.total_donations
    @all_charges = Stripe::Charge.all
    total_amount = 0
    @donations_array = @all_charges.map do |thing|
      total_amount += thing['amount']
    end
    @total_donations = total_amount/100
  end

end