class Article < ApplicationRecord
  # module in models.concern.visible.rb
  include Visible

  has_many :comments, dependent: :destroy


  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
