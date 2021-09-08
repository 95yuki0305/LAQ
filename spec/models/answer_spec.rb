require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do
    user = FactoryBot.create(:user)
    question = FactoryBot.build(:question)
    question.save
    @answer = FactoryBot.build(:answer, user_id: user.id, question_id: question.id)
    sleep 0.1
  end

  describe '問題を解答' do
    context '問題を解答できる場合' do
      it 'self_answerが入力されていれば解答できる' do
        expect(@answer).to be_valid
      end
    end
    context '問題を解答できない場合' do
      it 'self_answerが空では解答できない' do
        @answer.self_answer = ''
        @answer.valid?
        expect(@answer.errors.full_messages).to include("Self answer can't be blank")
      end
    end
  end
end
