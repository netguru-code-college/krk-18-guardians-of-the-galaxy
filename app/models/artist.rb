class Artist < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :related_artists, foreign_key: "original_artist_id"
end
