class Team < ApplicationRecord
	# rails generate scaffold teams team_details:text sport:string game_date:date points:integer created_at:datetime transaction_id:integer 
	# id | team_details | sport | game_date | points | created_at | updated_at | transaction_id

	# a team belongs to a user
	# a user has many teams
	# game_date must be date
	# points must be integer
	# team_details is a JSON element of all the players on the team given by factor and by full_name along with their probability of game
	# is depedent to user

	# Validations
	validates :team_details, presence: true
	validates :sport, presence: true
	validates :game_date, numericality: true
	validates :points, numericality: true
	validates :transaction_id, numericality: true 

  	# Associations
  	belongs_to :users
  	validates :user_id, presence: true
end
