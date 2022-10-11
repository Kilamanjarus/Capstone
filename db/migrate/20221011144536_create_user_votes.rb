class CreateUserVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_votes do |t|
      t.integer :user_id
      t.integer :workout_id
      t.boolean :vote

      t.timestamps
    end
  end
end
