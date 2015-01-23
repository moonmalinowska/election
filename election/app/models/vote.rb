class Vote < ActiveRecord::Base
  belongs_to :districts
  belongs_to :campaign_commitee

  validates :vote, numericality: true
  validates :valid_vote, numericality: true
  validates :invalid_vote, numericality: true
  validates :empty_vote, numericality: true
  validates :other_vote, numericality: true
  validates :issued_voting_card, numericality: true
end
