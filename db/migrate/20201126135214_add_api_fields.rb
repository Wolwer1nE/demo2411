class AddApiFields < ActiveRecord::Migration[6.0]
  def change
    add_column :weathers, :wind_speed, :float
    add_column :weathers, :feels_like, :integer
    add_column :weathers, :cloudcover, :integer
  end
end
