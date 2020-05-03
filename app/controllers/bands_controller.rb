class BandsController < ApplicationController
  before_action :authenticate_user! #has to be at the top so you have to be signed in
  before_action :find_band ,only: [:show, :edit, :update]
  # before_action :set_band_listing, only: [:edit, :update, :destroy]


  def index
    @bands = Band.all
    #this is a visit count for the page, can reset with clearing the cookies
    if !session[:count]  
      session[:count] = 1
    else
      session[:count] += 1
    end
  end

  def show
    # @band = Band.find(params[:id])  Can remove these because of find_band method, as well as edit, and update
  end

  def new
    @band = Band.new
  end

  def create
    # @band = Band.new(band_params)
    # @band.save

    # redirect_to @band
    # need to have devise connected for this
    @band = current_user.bands.create(band_params)
    if @band.errors.any?
      render :new
    else
      flash[:success] = "You successfully created a new band!"
      redirect_to bands_path
    end 
  end

  def edit
    # @band =  Band.find(params[:id])
  end

  def update
    # @band = Band.find(params[:id])
    @band.update(band_params)

    redirect_to @band
  end

  def destroy
    @band.destroy

    redirect_to bands_path
  end

  private

  def band_params
    params.require(:band).permit(:name, :album_title, :date_started, :picture)
  end

  def find_band
    @band = Band.find(params[:id])
  end
  # if statement authorization
  # def set_band_listing
  #   id = params[:id]
  #   @band = current_user.bands.find_by_id(id)

  #   if @band == nil
  #     redirect_to band_path
  #   end
  # end
end


