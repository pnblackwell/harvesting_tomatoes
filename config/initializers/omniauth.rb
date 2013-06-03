Rails.application.config.middleware.use OmniAuth::Builder do
  provider :harvest, ENV['HARVEST_IDENTIFIER'], ENV['HARVEST_SECRET']
end