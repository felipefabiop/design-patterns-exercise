Dir["#{File.dirname(__FILE__)}/**/*.rb"]
  .reject { |f| f == "./#{__FILE__}" }
  .each { |filename| require filename }

# This example demonstrates a simple checkout process for an ecommerce.
#
# The checkout process involves the following steps:
#   1. Create a new user.
#   2. Create a new order.
#   3. Adding products to the cart.
#   4. Display the cost of the order.
#
# Usage:
#   Run this file using `ruby example_checkout_process.rb`.

user = User.new("Felipe Fabio")
order = Order.new(user)

order.add_product(Product.new(name: "t-shirt", price: 10_000))
order.add_product(Product.new(name: "shoes", price: 30_000))

order = GiftwraperDecorator.new(order)
order = ShippingCostDecorator.new(order)

puts "#{order.user.name} tu compra tiene un costo de #{Utils.money_format(order.cost)}"
# puts "Costo con envoltorio: #{Utils.money_format(order_giftwraper.cost)}"
# puts "Costo con envío: #{Utils.money_format(order_shipping.cost)}"
