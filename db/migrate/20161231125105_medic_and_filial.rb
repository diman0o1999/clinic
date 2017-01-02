class MedicAndFilial < ActiveRecord::Migration[5.0]
  def change
    create_table :filials_medics do |t|
      t.integer :medic_id
      t.integer :filial_id

      t.timestamps
    end
  end
end
