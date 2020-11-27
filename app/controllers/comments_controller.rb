class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to  "/stores/#{@comment.store.id}"  
    else
      @store = @comment.store
      @comments = @store.comments
      render "stores/show" 
    end
  end

  def destroy
    if user_signed_in? && current_user.id == @comment.user.id
      @comment.destroy
      redirect_to  "/stores/#{@comment.store.id}"
    else 
      render :index
    end  
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, store_id: params[:store_id])
  end

end