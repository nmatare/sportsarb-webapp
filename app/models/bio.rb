class Bio < ApplicationRecord
	# rails generate scaffold bio user_id:integer first_name:string last_name:string email:string phone_number:string address:text state:string zipcode:integer country:string gender:string age:integer
	# id | username | first_name | last_name | email | phone_number | address | state | zipcode | country | avatar | gender | age | last_upload |
	# a user has many biographies
	# a biography belongs to to a user
	# is dependent to user

	# Validations
	validates :first_name, length: { maximum: 30 }
	validates :last_name, length: { maximum: 30 }
	validates :email, format: /@/, presence: true

	validates :age, numericality: true 
	validates :gender, inclusion: %w(male female other)

  	# # Associations
  	belongs_to :users , required: false
  	validates :user_id, presence: true	
end
