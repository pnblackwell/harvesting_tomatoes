class SessionsController < ActionController::Base

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    session[:token] = env["omniauth.auth"]["credentials"]["token"]
    user.token = session[:token]
    user.save 
    # binding.pry
    # redirect_to dashboard_path, notice: "Signed In!"
    session[:code] = request.url.split('=').last
    # request_access_token
    request_access_token(session[:code])

    fail
  end

  def destroy
    session[:user_id] = nil
    redirect_to dashboard_path, notice: "Signed out!"
  end

  def request_access_token
    conn = Faraday.post do |req|
      req.url "https://api.harvestapp.com/oauth2/token" 
      req.headers['Content-Type'] = 'application/json'
      req.body = {
        :code => session[:code],
        :client_id => ENV['HARVEST_IDENTIFIER'],
        :client_secret => ENV['HARVEST_SECRET'],
        :redirect_uri => 'http://lvh.me:3000',
        :grant_type =>  'authorization_code'
      }.to_json
    end
    render text: conn.inspect
  end

  def access_token_body(code)
      { :code => code,
        :client_id => ENV['HARVEST_IDENTIFIER'],
        :client_secret => ENV['HARVEST_SECRET'],
        :redirect_uri => 'http://lvh.me:3000',
        :grant_type =>  'authorization_code'
      }
    end

  def request_access_token(code)
    puts %{

      #{access_token_body(code)}

    }
    conn = Faraday.post "https://api.harvestapp.com/oauth2/token" do |req|
      req.headers['Content-Type'] = 'application/json'
      # req.body = access_token_body(code).to_json
      access_token_body(code).each do |key,value|
        req.params[key] = value
      end
    end
    fail
    # render text: conn.inspect
  end

end
