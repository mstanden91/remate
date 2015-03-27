class AddStateIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :state, index: true
    add_foreign_key :products, :states
  end
end
