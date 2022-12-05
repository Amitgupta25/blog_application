class Comment < ApplicationRecord
  include Visible 
  belongs_to :article

  validates :commenter, presence: true
  validates :body, presence: true
  validates_length_of :body, :minimum => 10  
  validates :status, presence: true
end
