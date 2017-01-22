class GigsController < ApplicationController

 def index
   gigs = Gig.where({playlist: params[:playlist_id]})
   render :json => gigs
 end

 def create
   gig = Gig.create( gig_params )
   render json: gig, status: :created
 end

 def show
   gig = Gig.find(params[:id])
   render :json => gig
 end

 private
 def gig_params
   params.require(:gig).permit([:location, :date])
 end

end