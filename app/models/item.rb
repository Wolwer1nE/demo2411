class Item < ApplicationRecord
  validates :name, presence: true
  belongs_to :item_type
  has_and_belongs_to_many :outfits
end