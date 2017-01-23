class ArtistsController < ApplicationController

  def index
    artists = Artist.all
    render :json => artists
  end

  def show
    artist = Artist.find(params[:id])
    render :json => artist
  end

  # def new
  #   artist = Artist.new
  #   render json: artist
  # end

  def create
    artist = Artist.create( artist_params )
    render json: artist, status: :created
  end

  # def edit
  #   artist = Artist.find(params[:id])
  #   render json: artist
  # end

  def update
    artist = Artist.update(artist_params)
    render json: artist, status: :created
  end

  def delete
    Artist.destroy(params[:id])
  end

  private
  def artist_params
    params.require(:artist).permit([:name, :website])
  end

end