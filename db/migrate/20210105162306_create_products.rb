class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, index: { unique: true }
      t.float :price, default: 10

      t.timestamps
    end

    add_reference :products, :category, index: true
  
  end
end
