class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :genres, presence: true
  has_many :books
end
