class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.integer :first_user_id
      t.integer :second_user_id
      t.boolean :first_consent
      t.boolean :second_consent

      t.timestamps
    end
  end
end
