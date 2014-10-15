class Order < ActiveRecord::Base
  include Payola::Sellable
  before_validation :generate_uuid!, :on => :create
  belongs_to :user
  self.primary_key = 'uuid'
  scope :completed, -> { where("token != ? OR token != ?", "", nil) }

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

  def generate_uuid!
    begin
      self.uuid = SecureRandom.hex(16)
    end while Order.find_by(:uuid => self.uuid).present?
  end

  validates_presence_of :name, :price, :user_id

end
