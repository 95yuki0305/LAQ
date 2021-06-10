class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :self_answer, presence: true
end
