class CreateResourcesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :resources_tables do |t|
        t.string :name
        t.string :room_number
    end
  end
end
