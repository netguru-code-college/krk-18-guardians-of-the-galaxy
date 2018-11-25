class CreateJoinTableRelatedArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :related_artists do |t|
      t.integer :original_artist_id
      t.integer :related_artist_id

    end
  end
end
