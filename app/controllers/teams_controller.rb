class TeamsController < ApplicationController
  #before_action :set_team, only: [:show]

  # User account pages follow account user layout
  layout "account"

  #Teams controler is only used to show players team
  def show
  	 @bio = Bio.where(:user_id => current_user.id).last  #existing user signing in
  	 @teams = nil #need to fix SportsController first
   # @teams = Team.where(:user_id => current_user.id)  # Get last updated bio of user
  end

end
