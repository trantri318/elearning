# frozen_string_literal: true

# This shiny device polishes bared foos
class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
