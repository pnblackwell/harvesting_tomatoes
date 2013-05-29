require 'harvested'

class Harvest < ActiveResource::Base



  def self.view_all_projects
    harvest = Harvest.client('pnbwell', 'pnbwell', 'harvestingtomatoes')
    harvest.projects.all
  end

end