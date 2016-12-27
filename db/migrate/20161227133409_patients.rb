class Patients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.integer :user_id
      t.integer :tel_number, limit: 8
      t.string :foto

      t.timestamps
    end
  end
end