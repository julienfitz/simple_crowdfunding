class Donation < ActiveRecord::Base
  has_many :charges


  DONATION_LEVELS = ["Level One - $20","Level Two - $50",
                     "Level Three - $100", "Level Four - $300"]

end
