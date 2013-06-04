require 'harvested'

class HarvestInfo < ActiveRecord::Base

belongs_to :user

  # def toggle_timer
  #   conn = Faraday.new
  #   response = conn.get 'https://pnbwell.harvestapp.com/daily/timer/150844187'
  #   conn.headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json', 'Authorization' => "Basic #{basic_auth_token}"}
  #   conn.params = {:username => 'pnblackwell@gmail.com', :password => 'harvestingtomatoes'}
  # end

  def get_projects
    subdomain = pnbwell
    conn = Faraday.new(:url => "http.#{subdomain}.harvestapp.com") do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = conn.get '/projects'

  end


  private

  def basic_auth_token
    Base64.encode64("#{session[:harvest_username]}:#{session[:harvest_password]}").delete("\r\n")
  end

end