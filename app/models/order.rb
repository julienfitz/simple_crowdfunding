class Order < ActiveRecord::Base
  #before_filter :set_order, only: [:show]
  has_many :items, foreign_key: "item_id"

  def total
    @orders = Order.all
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end
end
