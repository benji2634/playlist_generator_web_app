class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :lyrics_url
      t.references :genre, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true
      t.references :playlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
