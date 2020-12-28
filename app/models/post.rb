class Post < ApplicationRecord
  has_many :comments
  has_many :books
  belongs_to :user
  has_many_attached :images
  with_options presence: true do
    validates :title
    validates :content
    validates :place
    validates :images
  end
end
