class TimersController < ActionController::Base

  def toggle
    token = Base64.encode64("pnblackwell@gmail.com:harvestingtomatoes").delete("\r\n")

    conn = Faraday.new(:url => 'https://pnbwell.harvestapp.com') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
    
    # conn = Faraday.new
    # conn.basic_auth(token)
    conn.headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json', 'Authorization' => "Basic #{token}"}
    # conn.params = {:username => 'pnblackwell@gmail.com', :password => 'harvestingtomatoes'}
    response = conn.get '/daily/timer/150844187'
    render text: response.inspect
  end
end
