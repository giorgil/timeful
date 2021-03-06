# This migration comes from timeful (originally 20160927141608)
class CreateTimefulActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :timeful_activities do |t|
      t.string :type, null: false
      t.string :object_type, null: false
      t.integer :object_id, null: false
      t.string :actor_type, null: false
      t.integer :actor_id, null: false

      t.timestamps null: false

      t.index [:object_type, :object_id]
      t.index [:actor_type, :actor_id]
    end
  end
end
