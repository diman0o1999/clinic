class Questions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :patient_id
      t.integer :medic_id
      t.text :text_question
      t.text :text_answer
      t.integer :status_question, default: 0

      t.timestamps

    end
  end
end
