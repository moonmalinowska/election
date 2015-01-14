class Commitee < ActiveRecord::Base
  has_many :users
  validates :name, presence: true, length: {within: 2..50}
end
