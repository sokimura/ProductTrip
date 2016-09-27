class WebController < ApplicationController

  def index
    @site = Site.order("created_at DESC").page(params[:page]).per(5)
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @category = Category.where(id: params[:id])
    @site = Site.order("created_at DESC").page(params[:page]).per(5).where(category_id: params[:id])
  end

end
