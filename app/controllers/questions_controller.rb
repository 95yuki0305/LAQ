class QuestionsController < ApplicationController
  
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