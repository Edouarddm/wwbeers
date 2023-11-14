class Beer < ApplicationRecord
  has_one_attached :photo
  belongs_to :brewery

  validates :name, presence: true
  validates :country, presence: true
  validates :style, presence: true
  validates :abv, presence: true
  validates :brewery, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_style_and_country,
    against: [ :name, :style, :country ],
    using: {
      tsearch: { prefix: true }
    }
end
