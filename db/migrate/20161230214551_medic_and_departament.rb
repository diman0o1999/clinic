class MedicAndDepartament < ActiveRecord::Migration[5.0]
  def change
    create_table :departaments_medics, id: false do |t|
      t.integer :medic_id, index: true
      t.integer :departament_id, index: true

      t.timestamps
    end
  end
end

