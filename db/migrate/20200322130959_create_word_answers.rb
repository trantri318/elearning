class CreateWordAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :word_answers do |t|
      t.String :content
      t.String :word_id
      t.String :correct

      t.timestamps
    end
  end
end
