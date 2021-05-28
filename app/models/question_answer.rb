class QuestionAnswer
  include ActiveModel::Model
  attr_accessor :question, :answer, :description, :user_id

  with_options presence: true do
    validates :question
    validates :answer
    validates :user_id
  end

  def save
    question = Question.create(question: question, user_id: user_id)
    Answer.create(answer: answer, description: description, question_id: question.id)
  end
end