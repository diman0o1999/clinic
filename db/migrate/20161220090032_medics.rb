class Medics < ActiveRecord::Migration[5.0]
  def change
    create_table :medics do |t|
      t.integer :user_id
      t.string :daywork1
      t.string :daywork2
      t.string :daywork3
      t.string :about
      t.string :post1
      t.string :post2
      t.string :post3
      t.string :foto
      t.integer :raiting

      t.timestamps
    end
  end
end
