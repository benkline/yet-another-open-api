FactoryGirl.define do
  factory :user do
    name RandomData.random_name
    sequence(:email){|n| "user#{n}@factory.com" }
    password RandomData.random_password
    bio RandomData.random_paragraph
    created_at {rand(10.minutes .. 1.year).ago}
    updated_at {rand(1.minute .. 9.minutes).ago}
  end
end
