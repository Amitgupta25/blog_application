require 'pry'
require 'rails_helper'


describe ArticlesController, :type => :controller do

  it "has a 200 status code" do
    get :index
    expect(response.status).to eq(200)
  end

  it "responds to custom format" do
    post :create, :params => { :article => { title: "Any Title", body: "Any Body", status: "Any of the three" }, :format => :json }
    expect(response.content_type).to eq "application/json; charset=utf-8"
  end

  it "updates the article present with new one and render a message" do
    article = FactoryBot.create (:article)
    patch :update, params: {article: {title: "Title123", body: "MoreThanTen Characters", status: "AnyOfTheThree"}, id: article.id}
    expect(response.body).to include 'Updated Successfully'
  end

  it "destroy the article and display the message" do 
    article = FactoryBot.create (:article)
    expect{ delete :destroy, :id => article.id}
  end

end