
require 'ffaker'

100.times do
  User.create!(
    email: FFaker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end

puts "Database seeded with 100 sample users."
