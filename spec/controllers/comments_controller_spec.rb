require 'rails_helper'

describe CommentsController, :type => :controller do
  before(:all) {@article = FactoryBot.create (:article)}

  it "has a 200 status code" do
    get :index, params: {article_id: @article.id}
    expect(response.status).to eq(200)
  end

  it "responds to custom format" do
    post :create, params:  { article_id: @article.id, comment: { commenter: "commenter_name", body: "comment_body", status: "AnyOfTheThree" }, :format => :json}
    expect(response.content_type).to eq "application/json; charset=utf-8"
  end

  it "destroy the article and display the message" do 
    comment = FactoryBot.create (:comment)
    expect{ delete :destroy, :id => comment.id}
  end

end
