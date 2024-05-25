class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
  validates :title, :overview, uniqueness: true
  validates :title, :overview, presence: true
end
