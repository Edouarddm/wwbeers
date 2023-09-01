class List < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :beers, through: :bookmarks

  validates :name, presence: true
end
