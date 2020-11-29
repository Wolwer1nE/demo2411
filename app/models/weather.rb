class Weather < ApplicationRecord
  has_many :outfit_histories, dependent: :destroy
  def desc
    "#{temp} - #{humidity}- #{created_at}"
  end
end