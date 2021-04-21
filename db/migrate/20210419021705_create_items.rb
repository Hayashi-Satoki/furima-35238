class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :category_id
      t.integer :condition_id
      t.integer :shipping_fee_id
      t.integer :prefecture_id
      t.integer :required_day_id
      t.integer :price, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
