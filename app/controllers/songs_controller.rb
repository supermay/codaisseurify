class SongsController < ApplicationController
  # def new
  #   @song = Song.new
  # end

  def create
    @song = Song.create(song_params.merge(artist_id: params[:artist_id]))

    respond_to do |format|
      if @song.save
        format.html { redirect_to artist_path(params[:artist_id]), notice: 'Song was created!' }
        format.json { render json: {}, status: :created }
      else
        format.html { redirect_to artist_path(params[:artist_id]) }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(params[:artist_id])
  end

  private
  def song_params
    params.require(:song).permit(:name,:description,:youtube_link)
  end
end
