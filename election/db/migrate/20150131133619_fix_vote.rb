class FixVote < ActiveRecord::Migration

  def change
    remove_column :votes, :invalid_vote, :integer
    add_column :districts, :invalid_vote, :integer
    remove_column :votes, :empty_vote, :integer
    add_column :districts, :empty_vote, :integer
    remove_column :votes, :other_vote, :integer
    add_column :districts, :other_vote, :integer
    remove_column :votes, :issued_voting_card, :integer
    add_column :districts, :issued_voting_card, :integer
    remove_column :votes, :valid_vote, :integer
  end

end
