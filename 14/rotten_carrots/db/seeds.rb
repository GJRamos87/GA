# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = User.create(name: 'George')
b = User.create(name: 'Chris')


n = Movie.create(title: 'Inglorious Basterds')
n2 = Movie.create(title: 'Inglorious Basterds 2')


Rating.create(movie_id: 'Inglorious Basterds')
Review.create(content: 'Amazing Movie', movie_id: n.id, user_id: a.id)
Review.create(content: 'Okay Movie', movie: n2, user: b)


a.reviews.create(content: "Also i bought the blu-ray", movie: n)