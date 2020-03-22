class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.String :user_id
      t.String :category_id
      t.string :result

      t.timestamps
    end
  end
end
