class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.String :target_id
      t.String :user_id
      t.string :action_type

      t.timestamps
    end
  end
end
