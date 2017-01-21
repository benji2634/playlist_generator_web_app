class Playlist < ActiveRecord::Base
  has_many :songs
  has_many :gigs
end
