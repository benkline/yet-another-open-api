class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :description
      t.string :emoji
      t.boolean :viewable, :null => false, :default => true
      t.boolean :public, :null => false, :default => true
      t.timestamps null: false
    end
  end
end
