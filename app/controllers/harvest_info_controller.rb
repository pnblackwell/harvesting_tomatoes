class HarvestInfoController < ActionController::Base

  def index
    harvest = Harvest.client('pnbwell', 'pnblackwell@gmail.com', 'harvestingtomatoes')
    @harvest = harvest.projects.all
    # @timer = HarvestInfo.toggle_timer
  end

  def new
    
  end
end