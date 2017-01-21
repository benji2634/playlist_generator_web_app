class GigsController < ApplicationController

  def index
    gigs = Gig.all
    render :json => gigs
  end

  def show
    gig = Gig.find(params[:id])
    render :json => gig
  end

end