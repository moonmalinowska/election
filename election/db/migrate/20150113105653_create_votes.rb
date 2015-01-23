class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote
      t.integer :valid_vote
      t.integer :invalid_vote
      t.integer :empty_vote
      t.integer :other_vote
      t.integer :issued_voting_card
      t.integer :campaign_commitee_id
      t.integer :district_id


      t.timestamps null: false
    end
  end
end
