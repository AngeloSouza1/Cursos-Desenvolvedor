class CreateProdutcts < ActiveRecord::Migration[7.0]
  def change
    create_table :produtcts do |t|
      t.string :name
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end
