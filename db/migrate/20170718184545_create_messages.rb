class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :message_text
      t.string :author
      t.belongs_to :message_thread, index: true

      t.timestamps
    end
  end
end
