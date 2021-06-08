class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @question = current_user.questions
  end
end
