class Diploms < ActiveRecord::Migration[5.0]
  def change
    create_table :diploms do |t|
      t.string :file
      t.integer :medic_id

      t.timestamps
    end
  end
end
