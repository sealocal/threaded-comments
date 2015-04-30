class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :full_name
      t.string :email

      t.timestamps null: false
    end
  end
end
