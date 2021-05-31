class QuestionAnswer
  include ActiveModel::Model
  attr_accessor :quiz, :response, :description, :user_id

  with_options presence: true do
    validates :quiz
    validates :response
    validates :user_id
  end

  def save
    question = Question.create(quiz: quiz, user_id: user_id)
    Answer.create(response: response, description: description, question_id: question.id)
  end
end
