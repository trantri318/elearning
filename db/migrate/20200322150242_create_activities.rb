# frozen_string_literal: true

# This shiny device polishes bared foos
class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :target_id
      t.string :user_id
      t.string :action_type

      t.timestamps
    end
  end
end
