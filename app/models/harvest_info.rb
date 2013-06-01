require 'harvested'

class HarvestInfo < ActiveRecord::Base

belongs_to :user
validates_presence_of :subdomain, :username, :password
validates_uniqueness_of :subdomain, :username, :password

  # def toggle_timer
  #   conn = Faraday.new
  #   response = conn.get 'https://pnbwell.harvestapp.com/daily/timer/150844187'
  #   conn.headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json', 'Authorization' => "Basic #{basic_auth_token}"}
  #   conn.params = {:username => 'pnblackwell@gmail.com', :password => 'harvestingtomatoes'}
  # end


  private

  def basic_auth_token
    Base64.encode64("#{session[:harvest_username]}:#{session[:harvest_password]}").delete("\r\n")
  end

end