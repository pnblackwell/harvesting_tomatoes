require 'spec_helper'

describe "Start timer" do
  it 'starts the timer' do
    # VCR.use_cassette
    visit dashboard_path
    click_on 'Start Timer'
    page.should have_content('Timer Started!')
  end
end