class CampaignCommitee < ActiveRecord::Base
  has many :votes
  validates :name, presence: true, length: {within: 2..50}
  validates :party, presence: true, length: {within: 2..50}
  validates_length_of :logo, allow_blank: true
end
