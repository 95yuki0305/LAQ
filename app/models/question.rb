class Question < ApplicationRecord
  belongs_to :user
  has_one :answer

  validates :question, presence: true
end
