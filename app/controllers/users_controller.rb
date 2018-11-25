class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(params[:id])
  end
  def profile
    @user = User.find(current_user.id)

    @potential_matches = UserServices::FindPotentialMatches.new(current_user.id).call
  end
end
