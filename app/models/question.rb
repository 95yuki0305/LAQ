class Question < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :quiz
    validates :response
  end
end
