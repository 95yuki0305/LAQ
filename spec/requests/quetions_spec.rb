require 'rails_helper'

describe QuestionsController, type: :request do

  before do
    @question = FactoryBot.create(:question)
  end

  describe "GET #index" do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do
      get root_path
      expect(response.status).to eq 200
    end
  end
end
