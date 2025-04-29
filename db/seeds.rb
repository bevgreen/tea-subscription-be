# teas
black_tea = Tea.create!(title: "Earl Grey Moonlight", description: "Rich bergamont tea with notes of vanilla and lavender", temperature: 98, brew_time: 3, image_url: '/images/black_tea.jpg')
green_tea = Tea.create!(title: "Matcha", description: "Sweet, rich, and creamy green tea", temperature: 80, brew_time: 5, image_url: '/images/matcha.jpg' )
rooibos_tea = Tea.create!(title: "Rooibos Vanilla", description: "Naturally sweet with hints of vanilla, honey, and wood", temperature: 100, brew_time: 5, image_url: '/images/rooibos.jpg')
white_tea = Tea.create!(title: "Cucumber Mint", description: "Distinctive lovely tea with notes of mint and cucumber", temperature: 98, brew_time: 7, image_url: '/images/white_tea.jpg')
oolong_tea = Tea.create!(title: "Iron Buddha", description: "Exceptional buttery, flowery, sweet aroma", temperature: 95, brew_time: 3, image_url: '/images/oolong.jpg')
herbal_tea = Tea.create!(title: "Lemon Ginger Vitality", description: "Tangy, sunny citrus flavor with notes of ginger", temperature: 100, brew_time: 5, image_url: '/images/herbal.jpg')
chai_tea = Tea.create!(title: "Masala Chai", description: "Spicy, aromatic cardamom with sweet cinnamon and fragrant cloves", temperature: 100, brew_time: 4, image_url: '/images/chai.jpg')

# subscription plans
caffeine_free_plan = SubscriptionPlan.create!(title: "Caffeine Free Teas", price: 30.00, frequency: "Monthly", image_url: '/images/no_caffeine_tea.jpg')
spicy_tea_plan = SubscriptionPlan.create!(title: "Spicy Black and Red Teas", price: 45.00, frequency: "Monthly", image_url: '/images/spicy.jpg')
world_traveler_plan = SubscriptionPlan.create!(title: "Teas from All Around the World", price: 100.00, frequency: "Bi-annual", image_url: '/images/world_traveler.jpg')
sweet_tooth_plan = SubscriptionPlan.create!(title: "Collection of Naturally Sweet Teas", price: 40.00, frequency: "Monthly", image_url: '/images/sweet_tea.jpg')
healthy_plan = SubscriptionPlan.create!(title: "Healthy Green and White Teas", price: 20.00, frequency: "Weekly", image_url: '/images/healthy_tea.jpg')

#customers
customer1 = Customer.create!(first_name: "Beverly", last_name: "Green", email: "bev@gmail.com", address: "620 Beverly Blvd, Beverly Hills, CA 90210 ")
customer2 = Customer.create!(first_name: "Holly", last_name: "Madison", email: "hollysworld@gmail.com", address: "123 Holmby Hills Drive, Los Angeles, CA 90024")
customer3 = Customer.create!(first_name: "Bridget", last_name: "Marquardt", email: "bridget33@gmail.com", address: "314 River Falls Lane, Chicago, IL, 60007 ")
customer4 = Customer.create!(first_name: "Dean", last_name: "Winchester", email: "impala67@gmail.com", address: "300 W 10th St, Lawrence, KS, 66044")

#customer subscriptions
CustomerSubscription.create!(customer: customer1, subscription_plan: sweet_tooth_plan, status: "active", start_date: DateTime.now )
CustomerSubscription.create!(customer: customer2, subscription_plan: healthy_plan, status: "active", start_date: DateTime.now)
CustomerSubscription.create!(customer: customer3, subscription_plan: caffeine_free_plan, status: "active", start_date: DateTime.now)
CustomerSubscription.create!(customer: customer4, subscription_plan: spicy_tea_plan, status: "inactive", start_date: DateTime.now)

#subscription plan teas
SubscriptionPlanTea.create!(subscription_plan: caffeine_free_plan, tea: herbal_tea)
SubscriptionPlanTea.create!(subscription_plan: caffeine_free_plan, tea: rooibos_tea)
SubscriptionPlanTea.create!(subscription_plan: sweet_tooth_plan, tea: rooibos_tea)
SubscriptionPlanTea.create!(subscription_plan: sweet_tooth_plan, tea: chai_tea)
SubscriptionPlanTea.create!(subscription_plan: world_traveler_plan, tea: oolong_tea)
SubscriptionPlanTea.create!(subscription_plan: world_traveler_plan, tea: white_tea)
SubscriptionPlanTea.create!(subscription_plan: world_traveler_plan, tea: rooibos_tea)
SubscriptionPlanTea.create!(subscription_plan: world_traveler_plan, tea: green_tea)
SubscriptionPlanTea.create!(subscription_plan: spicy_tea_plan, tea: black_tea)
SubscriptionPlanTea.create!(subscription_plan: spicy_tea_plan, tea: rooibos_tea)
SubscriptionPlanTea.create!(subscription_plan: spicy_tea_plan, tea: chai_tea)
SubscriptionPlanTea.create!(subscription_plan: healthy_plan, tea: green_tea)
SubscriptionPlanTea.create!(subscription_plan: healthy_plan, tea: white_tea)

