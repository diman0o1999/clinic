class Forms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :name
      t.integer :telephone, limit: 8
      t.integer :filial_id

      t.timestamps

    end
  end
end
