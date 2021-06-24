class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @question = Question.where(user_id: current_user.id).count if user_signed_in?
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to user_path(current_user.id)
  end

  def check
    @question = Question.find(params[:id])
    @nickname = current_user.nickname
  end

  private

  def question_params
    params.require(:question).permit(:quiz, :response, :description).merge(user_id: current_user.id)
  end
end
