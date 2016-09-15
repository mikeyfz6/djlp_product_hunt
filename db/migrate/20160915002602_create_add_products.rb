class CreateAddProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :add_products do |t|
      t.string :title
      t.text :decription
      t.string :link
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
