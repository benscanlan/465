# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Test User", email: "testuser@csuchico.edu", password: "123456", password_confirmation: "123456")

User.create!(name: "Sally", email: "sally@mail.csuchico.edu", password: "123456", password_confirmation: "123456")

User.create!(name: "Bob", email: "bob@mail.csuchico.edu", password: "123456", password_confirmation: "123456")
