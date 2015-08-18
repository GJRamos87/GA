class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :color
      t.string :fabric
      t.integer :size

      t.timestamps null: false
    end
  end
end
