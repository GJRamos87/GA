class CreateUserScaffolds < ActiveRecord::Migration
  def change
    create_table :user_scaffolds do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :email

      t.timestamps null: false
    end
  end
end
