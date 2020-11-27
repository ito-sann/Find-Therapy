class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(store_id: params[:store_id])
    
  end
  
  def destroy
  end  

end