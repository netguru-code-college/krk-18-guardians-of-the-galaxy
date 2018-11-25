module UserServices
  class FindPotentialMatches
    def initialize(user_id)
      @user = User.find(user_id)
    end

    def call
      find_users_with_similar_music_taste
    end

    private

    def find_users_with_similar_music_taste
      @favourite_artists = @user.artists.pluck(:id)

        User
          .select("users.*, COUNT(artists.id) artist_count")
          .joins(:artists)
          .group(:id)
          .where("artists.id IN (?) AND users.id NOT IN (?)", @favourite_artists, @user.id)
          .order("artist_count DESC")
          .limit(10)
    end
  end
end
