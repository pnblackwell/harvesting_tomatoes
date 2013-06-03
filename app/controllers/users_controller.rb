class UsersController < ActionController::Base

  def new
    @user = User.new
  end

  def create
    user
  end
end