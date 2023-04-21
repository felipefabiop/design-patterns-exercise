require "./utils"

class Order
  attr_accessor :user, :products, :status, :subtotal
  VALID_STATUSES = %w[pending processing shipped completed cancelled]

  def initialize(user)
    @user = user
    @products = []
    @status = "pending"
    @subtotal = 0
  end

  def calculate_subtotal
    @subtotal = @products.sum(&:price)
  end

  def cost
    subtotal
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
end
