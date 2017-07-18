class CreateMessageThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :message_threads do |t|
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
