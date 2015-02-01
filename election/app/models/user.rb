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

=begin
  acts_as_authentic do |config|
    config.validate_login_field = false
    config.validate_password_field = false
    config.encrypted_password_field = :crypted_password
    config.require_password_confirmation = true
  end
=end
  ROLES = %w[admin centralny okręgowy]
  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end


end
