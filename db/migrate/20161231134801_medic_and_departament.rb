class MedicAndDepartament < ActiveRecord::Migration[5.0]
  def change
    create_table :departaments_medics do |t|
      t.integer :medic_id
      t.integer :departament_id

      t.timestamps
    end
  end
end

