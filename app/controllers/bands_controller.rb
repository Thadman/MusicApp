class BandsController < ApplicationController
  before_action :find_band ,only: [:show, :edit, :update]

  def index
    @bands = Band.all
  end

  def show
    # @band = Band.find(params[:id])  Can remove these because of find_band method, as well as edit, and update
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.save

    redirect_to @band
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
end


