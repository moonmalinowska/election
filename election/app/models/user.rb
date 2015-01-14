class User < ActiveRecord::Base
  has_many :roles
  belongs_to :commitee
  belongs_to :district
  validates :password, length: {within: 6..30}
    confirmation: {
      message: "should match confirmation"
    }
  validates :login, uniqueness: true
    length: {within: 6..15}
end
