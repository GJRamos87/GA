class CreateCampgrounds < ActiveRecord::Migration
  def change
    create_table :campgrounds do |t|
      t.string :address
      t.integer :site_count

      t.timestamps null: false
    end
  end
end
