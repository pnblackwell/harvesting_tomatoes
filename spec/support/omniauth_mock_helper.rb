module OmniauthMockHelper
  def mock_auth_hash
    OmniAuth.config.mock_auth[:harvest] = {
      'provider' => 'harvest',
      'token' => "7P6KZG3I2kzQ1D584GBfwVXJwQDaIx/BUZXVCHKyKVyA30Z6ZDyLvRx6q/07J7ctlAFXV30JovZAqN6xAviv2w==",
      'refresh_token' => "9Q6KZG3W2kzQ1F184GBfwVXJwQDaIx/BUZXVCHKyKVyA30Z6ZDyLvRx6q/07J7ctlAFXV30JovZAqN6xAviv2w=="
    }
  end
end