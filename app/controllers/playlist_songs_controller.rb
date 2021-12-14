class PlaylistSongsController < ApplicationController
  def new
    @playlist_song = PlaylistSong.new
    @song = Song.find(params[:song_id])
  end

  def create
    @playlist_song = PlaylistSong.new(playlist_song_params)
    @song = Song.find(params[:song_id])
    @playlist_song.song = @song
    @playlist_song.save
    if @playlist_song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def destroy
    @playlist_song = PlaylistSong.find(params[:id])
    @playlist_song.destroy
    redirect_to songs_path
  end

  private

  def playlist_song_params
    params.require(:playlist_song).permit(:song_id, :playlist_id)
  end
end
