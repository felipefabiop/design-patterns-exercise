class ShippingObserver
    attr_accessor :free_shipping

    def initialize
        @free_shipping = false
    end

    def update(subtotal)
        if subtotal > 30_000 && !@free_shipping
            @free_shipping = true
            puts "¡Felicidades! Has conseguido envío gratis para tu pedido."
        end
    end
end