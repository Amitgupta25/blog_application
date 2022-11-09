require 'rails_helper'

describe Article, type: :model do
  before(:all) {@article = FactoryBot.create (:article)}
  
  it "Title must be present" do
    @article.title = nil
    expect(@article).not_to be_valid
  end

  it "Body must be present" do
    @article.body = nil
    expect(@article).not_to be_valid
  end

  it "should allow minimum of 10 characters" do
    @article.body = "s" * 10
    expect(@article).not_to be_valid
  end
end

