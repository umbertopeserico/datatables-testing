class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :full_name
      t.string :username, null: false
      t.string :email, null: false

      t.index :username, unique: true
      t.index :email, unique: true

      t.timestamps null: false
    end
  end
end
