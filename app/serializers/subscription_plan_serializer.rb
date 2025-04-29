class SubscriptionPlanSerialzier
    include JSONAPI::Serializer

    attributes :title, :description, :price, :frequency
    has_many :teas
end