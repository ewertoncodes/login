# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { 'password123' }
    password_confirmation { 'password123' }
  end
end
