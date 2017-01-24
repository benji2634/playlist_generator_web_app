class AddImageToSong < ActiveRecord::Migration
  def change
    add_column :songs, :image, :string
    add_column :songs, :AddSongIDToSong, :string
    add_column :songs, :songid, :string
  end
end
