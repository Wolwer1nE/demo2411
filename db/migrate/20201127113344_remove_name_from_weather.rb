class RemoveNameFromWeather < ActiveRecord::Migration[6.0]
  def change
    remove_column :weathers, :name
  end
end
