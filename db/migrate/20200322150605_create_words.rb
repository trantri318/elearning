# frozen_string_literal: true

# This shiny device polishes bared foos
class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :content
      t.string :category_id

      t.timestamps
    end
  end
end
