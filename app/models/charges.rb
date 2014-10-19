class Charges < ActiveRecord::Base

  has_one :donation

  def self.levels_for_dropdown
    donation_levels = Donation.all.collect do |donation|
      ["#{donation.level} - $#{donation.price}", donation.id]
    end
  end

end