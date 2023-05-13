require_relative "order_decorator"

class ShippingCostDecorator < OrderDecorator

  attr_accessor :shipping_type

  def initialize(order, shipping_type)
    @order = order
    @shipping_type = shipping_type
  end

  def cost
    # @order.cost + 5_000
    shipping_method = ShippingMethod.create_shipping_method(@shipping_type)
    @order.cost + shipping_method.shipping_cost
  end
end
