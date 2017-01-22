class GigsController < ApplicationController

 def index
   gigs = Gig.where({playlist: params[:playlist_id]})
   render :json => gigs
 end

 def create
   gig = Gig.create(
     {
     location: params[:location],
     date: params[:date],
     playlist_id: params[:playlist_id]
     })

   render :json => gig
 end

end