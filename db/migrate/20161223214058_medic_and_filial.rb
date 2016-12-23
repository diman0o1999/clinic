class MedicAndFilial < ActiveRecord::Migration[5.0]
  def change
    create_table :filials_medics, id: false do |t|
      t.integer :medic_id, index: true
      t.integer :filial_id, index: true

      t.timestamps
    end
  end
end