class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :list_price
      t.float :price
      t.float :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
