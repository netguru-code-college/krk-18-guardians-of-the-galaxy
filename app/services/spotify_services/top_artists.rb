module SpotifyServices
  class TopArtists

    def initialize(id)
      @id = id
    end

    def call
      find_user
      response = artists
      save_artist(response)
    end

    private
    def find_user
      @user = User.find(@id)
    end

    def artists
      headers = { "Authorization" => "Bearer #{@user.access_token}" }
      HTTParty.get("https://api.spotify.com/v1/me/top/artists", headers: headers)
    end

    def save_artist(hash)
      hash["items"].each do |element|
        new_artist = Artist.find_or_create_by(name: element["name"] ) do |artist|
          artist.image = element["images"].first["url"]
        end
        @user.artists << new_artist
      end
    end
  end
end
