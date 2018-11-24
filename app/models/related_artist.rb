class RelatedArtist < ApplicationRecord
  belongs_to :original_artist, foreign_key: "original_artist_id", class_name: "Artist"
  belongs_to :related_artist, foreign_key: "related_artist_id", class_name: "Artist"
end
