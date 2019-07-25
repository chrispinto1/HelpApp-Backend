# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Donation.destroy_all
Event.destroy_all
User.destroy_all

a = User.create(name: "A", password: "password", credit_card: 123, username: "Aa")
b = User.create(name: "B", password: "password", credit_card: 123, username: "Aa")

test = Event.create(title: "Test", goal: 10, description: "fun", raised_donation: 0, user_id: a.id, end_date: "June", active: true)

Donation.create(user_id: b.id, event_id: test.id, amount: 5)
