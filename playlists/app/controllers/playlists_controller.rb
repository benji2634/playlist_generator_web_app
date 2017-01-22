class PlaylistsController < ApplicationController

  def index
    playlists = Playlist.all
    render :json => playlists
  end

  def create
    playlist = Playlist.create( playlist_params )
    render json: playlist, status: :created
  end

  def show
    playlist = Playlist.find(params[:id])
    render :json => playlist
  end

  private
  def playlist_params
    params.require(:playlist).permit([:name])
  end

end