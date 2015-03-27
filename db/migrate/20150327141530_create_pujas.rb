class CreatePujas < ActiveRecord::Migration
  def change
    create_table :pujas do |t|
      t.references :product, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pujas, :products
    add_foreign_key :pujas, :users
  end
end
