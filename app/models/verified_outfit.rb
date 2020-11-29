class VerifiedOutfit < ApplicationRecord
  belongs_to :outfit
  belongs_to :weather
end