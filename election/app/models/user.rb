class User < ActiveRecord::Base

  has_one :district
  validates :password, length: {within: 6..30},
    confirmation: {
      message: "Hasła nie zgadzają się!"
    }
  validates :login, uniqueness: true,
    length: {within: 6..15},
    confirmation: {
        message: "Ilość znaków loginu: 6-15"
    }
end
