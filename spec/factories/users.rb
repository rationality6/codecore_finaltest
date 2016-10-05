FactoryGirl.define do
  factory :user do
    sequence(:email) do |n|
      Faker::Internet.email
    end
    password { Faker::Internet.password }
  end
end
