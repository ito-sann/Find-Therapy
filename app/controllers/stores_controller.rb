class StoresController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]
  def index
    @stores = Store.all.order(id: 'DESC')
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @store.comments.includes(:user)
    @like = Like.new
    @like = @store.likes.includes(:user)
  end

  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to store_path
    else
      render :edit
    end
  end

  def destroy
    if user_signed_in? && current_user.id == @store.user.id
      @store.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :description, :image, :address, :animal_id, :region_id).merge(user_id: current_user.id)
  end

  def set_store
    @store = Store.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in? && current_user.id == @store.user.id
  end

end