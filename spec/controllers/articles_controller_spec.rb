require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "GET #index" do
    subject { get :index }
    it "returns http success" do
      subject
      expect(response).to have_http_status(:success)
    end

    it "returns proper json" do
      articles = create_list :article, 2
      subject
      articles.each_with_index do |article, index|
        expect(json_data[index]['attributes']).to eq({
          "title" => article.title,
          "content" => article.content,
          "slug" => article.slug
        })
      end
    end
  end
end
