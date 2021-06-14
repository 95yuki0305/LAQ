class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy

  with_options presence: true do
    validates :quiz
    validates :response
  end
end
