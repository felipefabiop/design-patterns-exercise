require_relative "order_decorator"

class ShippingCostDecorator < OrderDecorator
  def cost
    @order.cost + 5_000
  end
end
