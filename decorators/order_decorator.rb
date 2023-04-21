require "forwardable"

class OrderDecorator
  extend Forwardable

  def_delegators :@order, :cost, :user

  def initialize(order)
    @order = order
  end
end
