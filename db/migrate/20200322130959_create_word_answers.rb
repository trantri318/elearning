class CreateWordAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :word_answers do |t|
      t.string :content
      t.string :word_id
      t.string :correct

      t.timestamps
    end
  end
end
