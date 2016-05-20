require 'random_data'

FactoryGirl.define do
  factory :item do
    title RandomData.random_word
    description RandomData.random_sentence
    created_at {rand(10.minutes .. 1.year).ago}
    updated_at {rand(1.minute .. 9.minutes).ago}
  end
end
