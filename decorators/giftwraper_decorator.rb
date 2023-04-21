require_relative "order_decorator"

class GiftwraperDecorator < OrderDecorator
  def cost
    total = @order.cost * 1.1
    total.to_i
  end
end
