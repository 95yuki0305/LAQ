class AnswersController < ApplicationController
  before_action :authenticate_user!

  def index
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      @question = Question.find(params[:question_id])
      render :show
    else
      @question = Question.find(params[:question_id])
      render :index
    end
  end

  def show
    @answer = Answer.find(params[:id])
    @question = Question.find(params[:question_id])
  end

  private

  def answer_params
    params.require(:answer).permit(:self_answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
