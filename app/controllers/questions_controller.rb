class QuestionsController < ApplicationController
  def index
    @question = Question.where(user_id: current_user.id).count if user_signed_in?
  end

  def new
    @question_answer = QuestionAnswer.new
  end

  def create
    @question_answer = QuestionAnswer.new(question_params)
    if @question_answer.valid?
      @question_answer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question_answer).permit(:quiz, :response, :description).merge(user_id: current_user.id)
  end
end
