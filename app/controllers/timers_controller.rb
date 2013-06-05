require 'json'

class TimersController < ActionController::Base

  def toggle
    #the get_projects method from harvest_info
    # subdomain = 'pnbwell'
    # conn = Faraday.new(:url => "http//#{subdomain}.harvestapp.com") do |faraday|
    #   faraday.request  :url_encoded             # form-encode POST params
    #   faraday.response :logger                  # log requests to STDOUT
    #   faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    # end

    # response = conn.get '/projects'
    # response.body.inspect
    conn = Faraday.get "https://pnbwell.harvestapp.com/daily", { access_token: session[:token] } do |req|
      # req.url "https://pnbwell.harvestapp.com/daily" 
      puts %{

        SESSION TOKEN: #{session[:token]}

      }
      req.params['access_token'] = session[:token]
      req.headers['Content-Type'] = 'application/json'
    end
    render text: conn.inspect
  end

  def start_toggle
    token = Base64.encode64("pnblackwell@gmail.com:harvestingtomatoes").delete("\r\n")
    
    # conn = Faraday.get("https://pnbwell.")
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
