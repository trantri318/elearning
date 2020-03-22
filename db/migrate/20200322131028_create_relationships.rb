class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :following_id
      t.String :follower_id

      t.timestamps
    end
  end
end
