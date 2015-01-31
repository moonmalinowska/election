class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote

      t.integer :campaign_commitee_id
      t.integer :district_id
      t.timestamps null: false
    end
  end
end
