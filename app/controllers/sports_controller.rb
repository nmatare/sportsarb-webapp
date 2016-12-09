class SportsController < ApplicationController

	# Allow browsing of static pages 
 	skip_before_action :authenticate_user!

	# User account pages follow account user layout
	layout "portal"

	# Pulls basketball player predictions from API 
	def basketball
		@bio = Bio.where(:user_id => current_user.id).last  #existing user signing in
		@sport = "NBA:DraftKings"
	end

	# Pulls basketball player predictions from API 
	def football
		@bio = Bio.where(:user_id => current_user.id).last  #existing user signing in
		@sport = "NFL:DraftKings"
	end

	# Pulls basketball player predictions from API 
	def soccer
		@bio = Bio.where(:user_id => current_user.id).last  #existing user signing in
		@sport = "FIFA:DraftKings"
	end

	# Sends game date and players to API and fetches prediction
	def predict
		@bio = Bio.where(:user_id => current_user.id).last  

		# Game_date and @players transformed to JSON and send to API in order to fetch player predictions
		@game_date = params[:game_date]
		@players = params[:players] 

		# API Returns player predictions
			#first look in database, and if predictions already exist, pull from here
			#else get request to API, and API returns predictions

		# Temp fake data is returned instead // modify this to store into database instead of this weird Array/Url string voodoo
		@array = Array.new
		8.times do
		  @array.push Faker::Name.name
		end

		render("sports/predict/", :notice => "Successfully fetched player predictions from API.")
		
	end

	# Optimizes team based upon player pool #R or Python wrapper here
	def optimize
		@bio = Bio.where(:user_id => current_user.id).last  
		@player_pool = params[:player_pool]

		#Call Python or R function to run linear programming optimiziation and return optimal team
		#Step is skipped for now

		# store team in database
		# enter transaction into database

		render("sports/optimize/", :notice => "Successfully optmized one team")
	end

end