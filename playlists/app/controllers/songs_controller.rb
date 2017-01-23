class SongsController < ApplicationController

  def index
    songs = Song.all
    render :json => songs
  end

  def show
    song = Song.find(params[:id])
    render :json => song
  end

  def create
    song = Song.create( song_params )
    render json: song, status: :created
  end

 def update
   song = Song.update(song_params)
   render json: song, status: :created
 end

 def delete
   Song.destroy(params[:id])
 end

  private
  def song_params
    params.require(:song).permit([:title, :lyrics_url])
  end

end