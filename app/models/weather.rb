class Weather < ApplicationRecord
  validates :name, presence: true
  has_many :outfit_histories, dependent: :destroy
end