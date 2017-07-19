class CreateMessageThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :message_threads do |t|
      t.integer :user_id, index: true
      t.integer :care_manager_id, index: true

      t.timestamps
    end
  end
end
