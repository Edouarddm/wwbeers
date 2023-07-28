class Beer < ApplicationRecord
  validates :name, presence: true
  validates :country, presence: true
  validates :style, presence: true
  validates :abv, presence: true
end
