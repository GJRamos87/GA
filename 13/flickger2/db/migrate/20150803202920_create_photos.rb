class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :filename
      t.string :caption

      t.timestamps null: false
    end
  end
end
