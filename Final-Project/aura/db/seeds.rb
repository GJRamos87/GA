# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Offer.create(offer_title: 'Test Title 1', description: 'This is a great offer', price: '100', active: 'Yes')

Offer.create(offer_title: 'New Jersey offer', description: 'This is a not a great offer', price: 'Free', active: 'No')

Offer.create(offer_title: 'Test Title 3', description: 'This is a not a great offer', price: 'Free', active: 'No')

Offer.create(offer_title: 'Test Title 4', description: 'This is a not a great offer', price: 'Free', active: 'No')

Offer.create(offer_title: 'Test Title 5', description: 'This is a not a great offer', price: 'Free', active: 'No')