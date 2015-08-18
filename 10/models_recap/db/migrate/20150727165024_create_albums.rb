class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :creator_name
      t.text :description

      t.timestamps null: false
    end
  end
end
