Rails.application.config.middleware.use OmniAuth::Builder do
  provider :harvest, ENV['pKVHUUzdWJgCzSB5j6a1iA=='], ENV['0Cssmwm2ax7dAnj7iUJ/Nz9YIQDGgKIpF+xuBdii5sVXzg64AfEkRb8GKoSwU2cgr80DbaDIWYSFqTf/XXvy8A==']
end