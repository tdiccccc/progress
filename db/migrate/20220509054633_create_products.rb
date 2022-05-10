class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|

      t.integer :genre_id, null:false
      t.date :delivery_date, null:false
      t.integer :product_count, null:false

      t.timestamps
    end
  end
end
