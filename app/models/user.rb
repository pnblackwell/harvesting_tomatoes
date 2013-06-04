class User < ActiveRecord::Base
  attr_accessible :email, :password

  has_one :harvest

  def self.from_omniauth(auth)
    where(auth.slice("provider", "  token")).first || create_from_omniauth(auth)
  end  

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.token = auth['credentials']["token"]
      user.refresh_token = auth['credentials']["refresh_token"]
    end
  end

  
end
