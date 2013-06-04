require 'json'

class TimersController < ActionController::Base

  def toggle
    #the get_projects method from harvest_info
    subdomain = 'pnbwell'
    conn = Faraday.new(:url => "http//#{subdomain}.harvestapp.com") do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = conn.get '/projects'
    response.body.inspect
  end

  def get_tasks
    token = Base64.encode64("pnblackwell@gmail.com:harvestingtomatoes").delete("\r\n")

      conn = Faraday.new(:url => 'https://pnbwell.harvestapp.com') do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    
    conn.headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json', 'Authorization' => "Basic #{token}"}
    response = conn.get '/daily'
    # render text: response.inspect
  end

end
