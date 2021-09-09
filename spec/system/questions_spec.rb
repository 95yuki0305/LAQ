require 'rails_helper'

RSpec.describe '問題投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @question = FactoryBot.build(:question)
  end
  context '問題の投稿ができるとき'do
  it 'ログインしたユーザーは新規投稿できる' do
    # ログインする
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    find('input[name="commit"]').click
    expect(current_path).to eq(root_path)
    # トップページのログインボタンがユーザー名に変更して、マイページへのボタンに変更していることを確認する
    expect(page).to have_content(@user.nickname)
    # 新規投稿ページへのボタンがあることを確認する
    expect(page).to have_content('投稿する')
    # 投稿ページに移動する
    visit new_question_path
    # フォームに情報を入力する
    fill_in 'question_quiz', with: @question.quiz
    fill_in 'question_response', with: @question.response
    # 送信するとQuestionモデルのカウントが1上がることを確認する
    expect{
      find('input[name="commit"]').click
    }.to change { Question.count }.by(1)
    # トップページに遷移することを確認する
    expect(current_path).to eq(root_path)
    # マイページに移動する
    visit user_path(@user.id)
    # マイページには先ほど投稿した内容の問題が存在することを確認する
    expect(page).to have_content(@question.quiz)
  end
end
  context '問題の投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      visit root_path
      # 新規投稿ページへのボタンをクリックしたら、ログイン画面に遷移する
      click_on '投稿する'
      expect(current_path).to eq(new_user_session_path)
    end
  end
end