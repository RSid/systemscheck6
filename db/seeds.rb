# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(name: "Zaftig's", address: "111 Nom Street", city: 'Boston', state: 'MA', zip: 02134, description: 'Delicious home-cooked Jewish food!',category: 'Jewish' )
Restaurant.create(name: "Refuge Cafe", address: "21 Harvard Ave", city: 'Boston', state: 'MA', zip: 02134, description: 'Hipster goodness.',category: 'Cafe' )

Review.create(body: "The eggplant fries are possibly the best thing on god's Earth.", rating: 4, restaurant_id: 2)
Review.create(body: "They discontinued the chicken nuggest. I can never return!", rating: 2, restaurant_id: 2)

