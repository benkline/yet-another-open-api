class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.string :emoji
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
