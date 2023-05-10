class CorreosChile
    attr_accessor :order

    def initialize(order)
        @order = order
    end

    def delivery_cost
        # order.shipping_address
        # order.packages.weight
        # Net::HTTP.get("https://correos.cl/api/v1/agencies/")
        
        5_000
    end
end