class Role < ActiveRecord::Base
  belongs_to :user
  validate :name, presence: true
end
