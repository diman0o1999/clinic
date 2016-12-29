class Prices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.string :price_name
      t.integer :price
      t.integer :departament_id

      t.timestamps

    end
  end
end
