class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end
  end
end
