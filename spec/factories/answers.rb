FactoryBot.define do
  factory :answer do
    self_answer {Faker::Lorem.sentence}
    association :user
    association :question
  end
end
