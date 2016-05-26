class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :list, index: true
      t.string :title
      t.text :description
      t.boolean :complete, :null => false, :default => false
      t.boolean :viewable, :null => false, :default => true
      t.boolean :public, :null => false, :default => false
      t.timestamps null: false
    end
  end
end
