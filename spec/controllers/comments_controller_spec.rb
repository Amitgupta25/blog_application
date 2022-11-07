require 'rails_helper'

describe CommentsController, :type => :controller do
  # before(:all) {comment = FactoryBot.create (:comment)}

  it "responds to custom format" do
    post :create, :params => { :comment => { article_id: 1, commenter: "commenter_name", body: "comment_body", status: "AnyOfTheThree" }, :format => :json }
    expect(response.content_type).to eq "application/json; charset=utf-8"
  end
end
