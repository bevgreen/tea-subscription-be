class SubscriptionPlanSerializer
    include JSONAPI::Serializer

    attributes :title, :price, :frequency, :image_url
    has_many :teas
    has_many :customer_subscriptions, include: [:customer]
end