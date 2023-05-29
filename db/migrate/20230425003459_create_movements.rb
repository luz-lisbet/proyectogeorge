class CreateMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :movements do |t|
      t.integer :typemov
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
