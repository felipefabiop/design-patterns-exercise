require "./utils"

class Order
  attr_accessor :user, :products, :status, :subtotal, :giftwraper, :shipping, :shipping_method
  VALID_STATUSES = %w[pending processing shipped completed cancelled]

  def initialize(user)
    @user = user
    @products = []
    @status = "pending"
    @total = 0
    @giftwraper = false
    @shipping = false
    @shipping_method = nil
  end

  def calculate_subtotal
    @subtotal = @products.sum(&:price)
  end

  def cost
    total = @subtotal
    total *= 1.1 if @giftwraper
    total += shipping_cost if @shipping
    total.to_i
  end

  def add_product(product)
    @products << product
    calculate_subtotal
  end

  def remove_product(product)
    if @products.delete(product)
      calculate_subtotal
    else
      puts "Product not found"
    end
  end

  def update_status(new_status)
    if VALID_STATUSES.include?(new_status)
      @status = new_status
    else
      puts "Invalid status"
    end
  end

  #   .
  #   .
  #   .
  #   .

  def apply_giftwraper
    @giftwraper = true
  end

  def apply_shipping(shipping_method)
    @shipping = true
    @shipping_method = shipping_method
  end

  def shipping_cost
    case @shipping_method
    when :standard
      correos = CorreosChile.new(self)
      correos.delivery_cost
    when :express
      blue = BlueExpress.new(self)
      blue.delivery_cost
    when :pickup
      0
    else
      raise "shipping method not recognized"
    end
  end
end
