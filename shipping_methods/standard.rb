module ShippingMethods
    class Standard < ShippingMethod
        def provider
            ShippingProviders::CorreosChile.new
        end
    end
end
