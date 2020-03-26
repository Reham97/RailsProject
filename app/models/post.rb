class Post < ApplicationRecord
  validates :title, length: { minimum: 2 }, length: { maximum: 30 }
  validates_presence_of :title, :body
  validates_uniqueness_of :title

end
