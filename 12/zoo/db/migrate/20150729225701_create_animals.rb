class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :gender
      t.integer :size
      t.integer :age

      t.timestamps null: false
    end
  end
end
