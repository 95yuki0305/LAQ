class AnswersController < ApplicationController
  def index
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to user_path(current_user.id)
    else
      render :index
    end
  end

  def show
  end

  private

  def answer_params
    params.require(:answer).permit(:self_answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end