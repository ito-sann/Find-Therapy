class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @profile = @user.profile
    @stores = @user.stores
  end
    
end