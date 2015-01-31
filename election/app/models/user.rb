class User < ActiveRecord::Base

  has_one :district


  validates :password, length: {within: 6..30}, :on => :create,
    confirmation: {
      message: "Hasła nie zgadzają się!"
    }
  validates :login, uniqueness: true, :presence => true,
    length: {within: 6..15},
    confirmation: {
        message: "Ilość znaków loginu: 6-15"
    }

  ROLES = %w[admin centralny okręgowy]
  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end


end
