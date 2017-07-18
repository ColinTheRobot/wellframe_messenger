class AddReadFieldToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :read, :boolean
  end
end
