class CreateOutfits < ActiveRecord::Migration[6.0]
  def change
    create_table :outfits do |t|
      t.timestamps
    end

    create_table :items_outfits do |t|
      t.references :item, null: false
      t.references :outfit, null: false
    end

    create_table :outfit_histories do |t|
      t.references :outfit, null: false
      t.references :weather, null: false
      t.integer :rate
      t.timestamps
    end
  end
end
