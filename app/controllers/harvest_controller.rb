class HarvestController < ActionController::Base

  def index
    harvest = Harvest.client('pnbwell', 'pnblackwell@gmail.com', 'harvestingtomatoes')
    @harvest = harvest.projects.all
  end
end