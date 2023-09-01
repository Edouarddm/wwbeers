class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :beer

  validates :beer, uniqueness: { scope: :list }
  validates :list, presence: true
end
