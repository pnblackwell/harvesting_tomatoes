require 'json'

class TimersController < ActionController::Base

  def toggle
    token = Base64.encode64("pnblackwell@gmail.com:harvestingtomatoes").delete("\r\n")
    conn = Faraday.new(:url => 'https://pnbwell.harvestapp.com') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
    conn.headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json', 'Authorization' => "Basic #{token}"}
    response = conn.get '/daily/timer/152173417'
    redirect_to dashboard_path
  end

  def get_daily_info
    token = Base64.encode64("pnblackwell@gmail.com:harvestingtomatoes").delete("\r\n")
    conn = Faraday.new(:url => 'https://pnbwell.harvestapp.com') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
    conn.headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json', 'Authorization' => "Basic #{token}"}
    @response = conn.get '/daily'
    render text: response.inspect
    fail
  end

  def get_daily_projects
    
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
