class Beer < ApplicationRecord
  belongs_to :brewery

  validates :name, presence: true
  validates :country, presence: true
  validates :style, presence: true
  validates :abv, presence: true
  validates :brewery, presence: true
end
