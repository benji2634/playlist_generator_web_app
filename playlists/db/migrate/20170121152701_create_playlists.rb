class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
