class ShippingMethod
    attr_accessor :shipping_type

    def self.create_shipping_method(shipping_type)
        case shipping_type
        when :standard
            ShippingMethods::Standard.new
        when :express
            ShippingMethods::Express.new
        when :pickup
            ShippingMethods::Pickup.new
        else
            raise "Shipping method not recognized"    
        end
    end

    def provider
        raise NotMethodError, "Subclass must implement abstract method"
    end

    def shipping_cost
        provider.calculate_cost
    end
end