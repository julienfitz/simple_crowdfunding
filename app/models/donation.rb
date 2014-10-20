class Donation < ActiveRecord::Base
  has_many :charges

  def self.days_left
    start_date = DateTime.now
    end_date = DateTime.parse "2014-11-07 00:00:00 +0500"
    (end_date - start_date).to_i
  end

end
