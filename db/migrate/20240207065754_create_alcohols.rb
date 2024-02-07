class CreateAlcohols < ActiveRecord::Migration[7.0]
  def change
    create_table :alcohols do |t|
      t.string     :alcohol_name,        null: false 
      t.text       :memo,                null: false
      t.integer    :category_id,         null: false
      t.references :user,                null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
