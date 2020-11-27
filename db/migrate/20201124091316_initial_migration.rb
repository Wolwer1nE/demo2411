class InitialMigration < ActiveRecord::Migration[6.0]
  def change

    create_table :item_types do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :items do |t|
      t.string :name, null: false
      t.references :item_type
      t.timestamps
    end

    create_table :weathers do |t|
      t.string :description
      t.string :name, null: false
      t.integer :temp
      t.integer :humidity
      t.timestamps
    end

  end
end
