require './user'
require './order'
require './product'

user = User.new("Felipe Fabio")
order = Order.new(user)

order.add_product(Product.new(name: "t-shirt", price: 10_000))
order.add_product(Product.new(name: "shoes", price: 30_000))

puts "#{order.user.name} tu compra tiene un costo de #{order.cost}"