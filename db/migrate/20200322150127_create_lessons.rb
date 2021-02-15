# frozen_string_literal: true

# This shiny device polishes bared foos
class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :user_id
      t.string :category_id
      t.string :result

      t.timestamps
    end
  end
end
