class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # a user has many transactions
  # a user has many bios (but only selects the most recent entry)
  # a user has many charges
  # a user has many teams

  # Validations
  has_many   :transactions, :dependent => :destroy
  has_many   :bios, 		:dependent => :destroy
  has_many   :charges, 		:dependent => :destroy
  has_many   :teams, 		:dependent => :destroy

end
