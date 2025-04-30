class SubscriptionPlanSerializer
    include JSONAPI::Serializer

    attributes :title, :price, :frequency, :image_url
    has_many :teas
    has_many :customer_subscriptions
    has_many :customers, through: :customer_subscriptions
end