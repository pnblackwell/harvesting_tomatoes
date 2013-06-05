require 'spec_helper'

describe "New user signs up" do
  
  context "with valid credentials" do
    
    it 'signs the user up and redirects to root path' do
      mock_auth_hash
      visit dashboard_path
      click_button 'Sign Up with Harvest'

      expect(current_path).to eq 'dashboard_path'
    end
  end
end