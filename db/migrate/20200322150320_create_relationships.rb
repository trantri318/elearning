class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :following_id
      t.string :follwer_id

      t.timestamps
    end
  end
end
