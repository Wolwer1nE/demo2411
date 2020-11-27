class Outfit < ApplicationRecord
  has_and_belongs_to_many :items
  has_many :outfit_histories
end