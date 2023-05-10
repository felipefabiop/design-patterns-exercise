class BlueExpress
    attr_accessor :order

    def initialize(order)
        @order = order
    end

    def delivery_cost
        # order.shipping_address
        # order.packages.weight
        # Net::HTTP.get("https://bluex.cl/api/v1/agencies/")

        8_000
    end
end