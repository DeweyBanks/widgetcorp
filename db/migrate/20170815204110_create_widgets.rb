class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.references :user, index: true, foreign_key: true
      t.attachment :image

      t.timestamps null: false
    end
  end
end
