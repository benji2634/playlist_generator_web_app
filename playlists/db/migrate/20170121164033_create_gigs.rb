class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :location
      t.datetime :date
      t.references :playlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
