# teas
black_tea = Tea.create!(title: "Earl Grey Moonlight", description: "Rich bergamont tea with notes of vanilla and lavender", temperature: 98, brew_time: 3 )
green_tea = Tea.create!(title: "Matcha", description: "Sweet, rich, and creamy green tea", temperature: 80, brew_time: 5 )
rooibos_tea = Tea.create!(title: "Rooibos Vanilla", description: "Naturally sweet with hints of vanilla, honey, and wood", temperature: 100, brew_time: 5 )
white_tea = Tea.create!(title: "Cucumber Mint", description: "Distinctive lovely tea with notes of mint and cucumber", temperature: 98, brew_time: 7)
oolong_tea = Tea.create!(title: "Iron Buddha", description: "Exceptional buttery, flowery, sweet aroma", temperature: 95, brew_time: 3)
herbal_tea = Tea.create!(title: "Lemon Ginger Vitality", description: "Tangy, sunny citrus flavor with notes of ginger", temperature: 100, brew_time: 5)
chai_tea = Tea.create!(title: "Masala Chai", description: "Spicy, aromatic cardamom with sweet cinnamon and fragrant cloves", temperature: 100, brew_time: 4)

# subscription plans
caffeine_free_plan = SubscriptionPlan.create!(title: "Caffeine Free Teas", price: 30.00, frequency: "Monthly")
spicy_tea_plan = SubscriptionPlan.create!(title: "Spicy Black and Red Teas", price: 45.00, frequency: "Monthly")
world_traveler_plan = SubscriptionPlan.create!(title: "Teas from All Around the World", price: 100.00, frequency: "Bi-annual")
sweet_tooth_plan = SubscriptionPlan.create!(title: "Collection of Naturally Sweet Teas", price: 40.00, frequency: "Monthly")
healthy_plan = SubscriptionPlan.create!(title: "Healthy Green and White Teas", price: 20.00, frequency: "Weekly")

#customers

