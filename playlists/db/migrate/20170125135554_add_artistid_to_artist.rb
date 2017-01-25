class AddArtistidToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :artistid, :string
  end
end
