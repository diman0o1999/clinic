class Medics < ActiveRecord::Migration[5.0]
  def change
    create_table :medics do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :daywork
      t.string :about
      t.string :post
      t.string :foto
      t.integer :departament_id
      t.integer :raiting

      t.timestamps
    end
  end
end
