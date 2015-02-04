class User < ActiveRecord::Base

  has_one :district


  #validates :password, length: {minimum: 6}, :on => :create, unless: Proc.new { |a| a.password.blank? }
  #validates :password_confirmation, length: {minimum: 6}
  #validates :login, uniqueness: true, :presence => true,
  #  length: {minimum: 6}

 # attr_protected :admin
  #has_secure_password
  acts_as_authentic do |config|
    config.crypted_password_field = :crypted_password
    #config.validate_login_field = false
    #config.validate_password_field = false
    #config.crypto_provider = Authlogic::CryptoProviders::BCrypt
    config.require_password_confirmation =true
  end

  ROLES = %w[admin centralny okręgowy]
  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end


end
