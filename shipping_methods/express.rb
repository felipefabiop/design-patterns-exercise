module ShippingMethods
    class Express < ::ShippingMethod
        def provider
            ShippingProviders::BlueExpress.new
        end
    end
end
