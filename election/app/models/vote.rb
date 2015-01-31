class Vote < ActiveRecord::Base
  belongs_to :districts
  belongs_to :campaign_commitee

  validates :vote, numericality: true

end
