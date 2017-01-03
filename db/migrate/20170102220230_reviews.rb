class Reviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.text :text_reviews
      t.integer :status_review, default: 0

      t.timestamps

    end
  end
end
