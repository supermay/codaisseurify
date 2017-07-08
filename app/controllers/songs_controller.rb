class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params.merge(artist_id: params[:artist_id]))
    @song.save
    redirect_to artist_path(params[:artist_id])
  end

  private
  def song_params
    params.require(:song).permit(:name,:description,:youtube_link)
  end 
end
