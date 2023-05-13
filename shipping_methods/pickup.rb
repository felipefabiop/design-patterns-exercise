module ShippingMethods
  class Pickup < ShippingMethod
    def provider
      ShippingProviders::PickupProvider.new
    end
  end
end
