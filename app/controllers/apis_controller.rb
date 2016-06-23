class ApisController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index, :random, :about]

  def index
    if params[:search]
      @apis = Api.search(params[:search])
    elsif params[:cat] != nil
      @apis = Api.where(category: params[:cat])
    else
      @apis = Api.all.order('created_at DESC')
    end
  end

  def show
    @api        = Api.find(params[:id])
    @review     = Review.new
    @reviews    = @api.reviews
  end

  def edit
    @api = Api.find(params[:id])
  end

  def new
    @api = Api.new
  end


  def create
    params[:api][:tags] = params[:api][:tags].split(',')
    api = Api.new(api_params)
    api.user = current_user
    if api.save
      Api.add_tags(api, params[:api][:tags])
      flash[:success] = 'New API Created!'
      redirect_to api_path(api)
    else
      flash[:failure] = api.errors.full_messages.join(', ')
      flash[:failure] += '. API Not Created.'
      render :new
    end
  end

  def update
    params[:api][:tags] = params[:api][:tags].split(',')
    @api = Api.find(params[:id])
    if @api.update(api_params)
      redirect_to api_path(@api)
      flash[:success] = 'Api Updated!'
    else
      flash[:failure] = 'Api Not Updated!'
      render :edit
    end
  end

  def destroy
    @api = Api.find(params[:id])
    @reviews = @api.reviews
    if @api.destroy
      @reviews.destroy
      flash[:success] = 'API Deleted'
      redirect_to apis_path
    end
  end

  def about
    render :about
  end

  private

  def api_params
    params.require(:api).permit(
      :name, :url, :description, :paid, :tags, :category)
  end
end
