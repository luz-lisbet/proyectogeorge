class AddProductToMovement < ActiveRecord::Migration[7.0]
  def change
    add_reference :movements, :product, null: false, foreign_key: true
  end
end
