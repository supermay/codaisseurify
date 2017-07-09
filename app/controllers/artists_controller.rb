class ArtistsController < ApplicationController
  def index
    if params[:sort].present?
      sortparam = params[:sort]
      if sortparam == "a-z"
        @artists = Artist.all.order(:name)
      elsif sortparam == "z-a"
        @artists = Artist.all.order(:name).reverse
      elsif sortparam == "time"
        @artists = Artist.all.order(:created_at)
      end
    else
      @artists = Artist.all.order(:name)
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    @artist.image = image_params
    @artist.save
    redirect_to artists_path,
    notice: "New artist has been successfully created!"
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  private

  def image_params
    params[:image].present? ? params.require(:image) : nil
  end

  def artist_params
    params.require(:artist).permit(:name,:image,:country,:is_band,:website)
  end
end
