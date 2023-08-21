class Brewery < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :beers, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :bar, inclusion: { in: [true, false] }
end
