class CreateVerifiedOutfits < ActiveRecord::Migration[6.0]
  def change
    create_table :verified_outfits do |t|
      t.references :outfit
      t.references :weather
      t.timestamps
    end
  end
end
