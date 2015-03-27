  class AddPriceToPujas < ActiveRecord::Migration
  def change
    add_column :pujas, :price, :integer
  end
end
