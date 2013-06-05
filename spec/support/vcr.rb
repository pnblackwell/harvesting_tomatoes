require 'vcr'

VCR.config do |c|
  c.cassette_library_dir = 'vcr_cassettes'
  c.hook_into :faraday
end