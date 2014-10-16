class StripePayment < ActiveRecord::Base
  belongs_to :order

  def create_customer(email, stripe_token)
    Stripe::Customer.create(
      :email => email,
      :card  => stripe_token
    )
  end

  def create_charge(amount)
    Stripe::Charge.create(
      customer: @customer.id,
      amount: amount,
      description: @customer.id,
      currency: 'usd'
    )
  end

  def process(stripe_email, stripe_token, amount)
    @customer ||= create_customer(stripe_email, stripe_token)
    @charge ||= create_charge(amount)
    if @customer && @charge
      save_data
    else
      false
    end
  end

  private
  def save_data
    self.update(
      stripe_customer_id: @customer.id,
      stripe_email: stripe_email,
      stripe_default_card: @customer.default_card,
      stripe_charge_id: @charge.id
    )
  end
end