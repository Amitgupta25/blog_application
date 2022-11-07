require 'rails_helper'

describe Article, type: :model do
  subject{described_class.new}
  
    it "Title must be present" do
      subject.title = ""
      expect(subject).not_to be_valid
    end

    it "Body must be present" do
      subject.body = ""
      expect(subject).not_to be_valid
    end
end

