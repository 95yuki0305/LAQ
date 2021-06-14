class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @question = current_user.questions
    @date = Date.current.strftime('%Y/%m/%d')
  end
end
