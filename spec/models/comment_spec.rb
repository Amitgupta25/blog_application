require 'rails_helper'

describe Comment, type: :model do
  it { expect(described_class.reflect_on_association(:article).macro).to eq(:belongs_to) }
end