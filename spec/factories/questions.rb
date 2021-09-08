FactoryBot.define do
  factory :question do
    quiz        {Faker::Lorem.sentence}
    response    {Faker::Lorem.sentence}
    description {Faker::Lorem.sentence}
    association :user
  end
end
