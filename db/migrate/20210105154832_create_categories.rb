class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :right, null: false
      t.integer :left, null: false, index: true

      t.timestamps
    end
  end
end
