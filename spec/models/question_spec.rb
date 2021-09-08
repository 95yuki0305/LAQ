require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    user = FactoryBot.create(:user)
    @question = FactoryBot.build(:question, user_id: user.id)
    sleep 0.1
  end

  describe '問題を投稿' do
    context '問題を投稿できる場合' do
      it 'quiz,answerが入力されていれば投稿できる' do
        expect(@question).to be_valid
      end
    end
    context '問題を投稿できない場合' do
      it 'quizが空では登録できない' do
        @question.quiz = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Quiz can't be blank")
      end
      it 'responseが空では登録できない' do
        @question.response = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Response can't be blank")
      end
    end
  end
end
