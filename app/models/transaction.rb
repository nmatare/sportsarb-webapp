class Transaction < ApplicationRecord
	# rails generate scaffold transaction credit:string debit:string created_at:datetime name:string user_id:integer notes:text
	# id | credit | debit | created_at | name | user_id | notes | updated_at
	# a user has many transactions
	# a transaction belongs to a user
	# a transcation is unique scope by credit and created_at
	# is dependent to user

	# Validations
	validates :credit, numericality: true
	validates :debit, numericality: true

	validates :user_id, numericality: true
	validates :gender, inclusion: %w(male female other)

  	# Associations
  	belongs_to :users
  	validates :user_id, presence: true

end
