FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@apiaddicts.xyz" }
    name 'Richie Cunningham'
    password 'password'
    password_confirmation 'password'

    trait :admin do
      role 'admin'
    end

  end
end
