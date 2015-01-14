class District < ActiveRecord::Base
  has_many :users
  belongs_to :voivodship
  belongs_to :vote
  validates :electorate, numericality: true
  validates :mandate, numericality: true
end
