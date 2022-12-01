class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
  validates_length_of :body, :minimum => 10  
end
