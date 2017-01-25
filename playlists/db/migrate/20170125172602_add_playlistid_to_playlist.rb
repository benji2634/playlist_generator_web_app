class AddPlaylistidToPlaylist < ActiveRecord::Migration
  def change
    add_column :playlists, :playlistid, :string
  end
end
