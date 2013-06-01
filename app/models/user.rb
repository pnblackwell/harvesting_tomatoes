class User < ActiveRecord::Base
  attr_accessible :email, :password

  has_one :harvest

  
end
