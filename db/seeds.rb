# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed Users
usernames = ["alice", "bob", "carol"]

usernames.each do |username|
  #create both user and biographical table
  user = User.create 
  user.email = "#{username}@example.com"
  user.password = "12341234"
  user.save
end

puts "There are now #{User.count} users in the database."

# Seed Biographies for each user
Bio.create(:user_id => 1, :first_name => "alice", :last_name => Faker::Name.last_name, :email => "alice@example.com", :phone_number => Faker::PhoneNumber.phone_number, :address => Faker::Address.street_address, :state => Faker::Address.state_abbr, :zipcode => Faker::Address.zip_code, :country => "US",  :gender => ["male", "female", "other"].sample, :age => Faker::Number.number(2))
Bio.create(:user_id => 2, :first_name => "bob", :last_name => Faker::Name.last_name, :email => "bob@example.com", :phone_number => Faker::PhoneNumber.phone_number, :address => Faker::Address.street_address, :state => Faker::Address.state_abbr, :zipcode => Faker::Address.zip_code, :country => "US",  :gender => ["male", "female", "other"].sample, :age => Faker::Number.number(2))
Bio.create(:user_id => 3, :first_name => "carol", :last_name => Faker::Name.last_name, :email => "carol@example.com", :phone_number => Faker::PhoneNumber.phone_number, :address => Faker::Address.street_address, :state => Faker::Address.state_abbr, :zipcode => Faker::Address.zip_code, :country => "US",  :gender => ["male", "female", "other"].sample, :age => Faker::Number.number(2))

# Seed teams per each user
# Team.create(:user_id => 1, :team_details => ["Ms. Orpha Jakubowski", "Mekhi Mann", "Karen Thompson", "Cleta Lakin", "Sydni Monahan", "Crystal Padberg", "Arely Thompson", "Ed Kub"], :sport => "NBA", :game_date => "2016-11-18", :points => 301, :transaction_id => 124345)
# Team.create(:user_id => 1, :sport => "NBA", :game_date => "2016-11-18", :points => 301, :transaction_id => 124345)

# Team.create(:user_id => 1, :team_details => {["Ms. Orpha Jakubowski", "Mekhi Mann", "Karen Thompson", "Cleta Lakin", "Sydni Monahan", "Crystal Padberg", "Arely Thompson", "Ed Kub"]}, :sport => "NBA")

# Team.create(:user_id => 1)
# Team.create(:user_id => 1)

# Team.create(:user_id => 1)

