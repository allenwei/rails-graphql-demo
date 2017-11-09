# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'faker'
require 'securerandom'

users = []
10.times do 
  u = User.create(name: Faker::Name.name)
  3.times do 
    BillingRecord.create(card_number: Faker::Number.number(16), user_id: u.id)
  end
end
users = User.all.to_a

100.times do
  index = rand(users.size - 1)
  puts "#{users.size} #{index}"
  user = users[index]
  o = Order.create(
    number: SecureRandom.uuid,
    user_id: user.id,
    billing_record_id: BillingRecord.where(user_id: user.id).first.id,
    total: rand(1000),
  )

  20.times do 
    LineItem.create(order_id: o.id, amount: rand(100), name: Faker::Food.dish, quantity: rand(10))
  end
end
