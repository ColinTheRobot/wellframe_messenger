class CreateCareManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :care_managers do |t|
      t.string :name

      t.timestamps
    end
  end
end
