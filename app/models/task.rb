require 'harvested'

class Task < ActiveResource::Base

  def new
    task = Harvest::TaskAssignment.new(:task_id => t.id, :project_id => )
  end
end
