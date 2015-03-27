class CreateProductsStates < ActiveRecord::Migration
  def change
    create_table :products_states do |t|
      t.references :product, index: true
      t.references :state, index: true
      
      t.timestamps null: false
    end
    add_foreign_key :products_states, :products
    add_foreign_key :products_states, :states
  end
end
