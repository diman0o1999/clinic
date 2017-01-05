class MarkMedics < ActiveRecord::Migration[5.0]
  def change
    create_table :mark_medics do |t|
      t.integer :medic_id
      t.integer :patient_id
      t.integer :mark

      t.timestamps

    end
  end
end

