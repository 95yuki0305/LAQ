class Question < ApplicationRecord
  belongs_to :user
  has_one :answer

  with_options presence: true do
    validates :quiz
    validates :response
  end
end
