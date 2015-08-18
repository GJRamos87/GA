class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :movie, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
