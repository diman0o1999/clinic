class Roles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :role_name

      t.timestamps
    end
  end
end
