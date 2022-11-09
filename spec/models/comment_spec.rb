require 'rails_helper'

describe Comment, type: :model do
  
  before(:all) {@article = FactoryBot.create (:article)}
  before(:all) {@comment = FactoryBot.create (:comment)}


  it "Commenter name should be present" do
    @comment.commenter = nil
    expect(@comment).not_to be_valid
  end

  it "Body must be present" do
    @comment.body = nil
    expect(subject).not_to be_valid
  end

  it "should allow minimum of 10 characters" do
    @comment.body = "s" * 10
    expect(@comment).not_to be_valid
  end

  it "Status of the comment should be present" do
    @comment.status = nil
    expect(@comment).not_to be_valid
  end
end