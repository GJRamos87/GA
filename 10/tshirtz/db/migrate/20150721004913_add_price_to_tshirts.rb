class AddPriceToTshirts < ActiveRecord::Migration
  def change
    add_column :tshirts, :price, :integer
  end
end
