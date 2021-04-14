class Coffee < ApplicationRecord
  validates :blend, presence: true
  validates :price, presence: true
end
