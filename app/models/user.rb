class User < ActiveRecord::Base
  
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation, :admin
    
  validates :email, :uniqueness => true
  
  def is_admin?
    self.admin == true
  end
end
