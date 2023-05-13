class ShippingProvider
    def calculate_cost
        raise NotMethodError, "Subclass must implement abstract method"
    end
end