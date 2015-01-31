class District < ActiveRecord::Base
  has_many :votes
  belongs_to :voivodships
  belongs_to :user

  validates :electorate, numericality: true
  validates :mandate, numericality: true
  validates :invalid_vote, numericality: true
  validates :empty_vote, numericality: true
  validates :other_vote, numericality: true
  validates :issued_voting_card, numericality: true
end
