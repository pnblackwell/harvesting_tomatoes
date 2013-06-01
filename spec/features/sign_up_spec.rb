describe "New user signs up" do
  
  context "with valid credentials" do
    
    it 'signs the user up and redirects to root path' do
      visit '/'
      click_button 'Sign Up'
      fill_in 'user[email]', with: 'user@example.com'
      fill_in 'user[password]', with: 'password'
      click_button 'Submit'

      expect(current_path).to eq 'dashboard_path'
    end
  end
end