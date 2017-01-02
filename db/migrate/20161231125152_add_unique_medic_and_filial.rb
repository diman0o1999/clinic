class AddUniqueMedicAndFilial < ActiveRecord::Migration[5.0]
  def change
    add_index :filials_medics, [:medic_id, :filial_id], unique: true
  end
end