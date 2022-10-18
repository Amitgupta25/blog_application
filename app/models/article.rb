class Article < ApplicationRecord
  include Visible
  has_many :, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

end
