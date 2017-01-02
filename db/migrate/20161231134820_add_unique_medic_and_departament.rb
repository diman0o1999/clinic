class AddUniqueMedicAndDepartament < ActiveRecord::Migration[5.0]
  def change
    add_index :departaments_medics, [:medic_id, :departament_id], unique: true
  end
end