class Order < ActiveRecord::Base
  attr_accessor :stripe_email, :stripe_token
  belongs_to :item
  has_one :stripe_payment
  scope :completed, -> { where("token != ? OR token != ?", "", nil) }

  def process_payment(payment_processor = StripePayment.new)
    self.stripe_payment = payment_processor
    if self.stripe_payment.process(stripe_email, stripe_token, cart.total)
      true
    else
      false
    end
  end

  def process_and_save!
    if self.process_payment
      self.save
    else
      false
    end
  end

  def self.goal
    1000
  end

  def self.percent
    (Order.revenue.to_f / Order.goal.to_f) * 100.to_f
  end

  def self.sponsors
    Order.completed.count
  end

  def self.revenue
    Order.completed.sum(:price).to_f 
  end

  def self.next_order_number
    if Order.count > 0
      Order.order("number DESC").limit(1).first.number.to_i + 1
    else
      1
    end
  end

end
