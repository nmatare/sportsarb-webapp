class ChargesController < ApplicationController

  # User Bios uses account layout
  layout "account"

  # This is the stripe account
  # Load API gems that allow user to swipe credit card and recieve payment in Stripe card
  def deposit
  end

  def balance
  	@bio = Bio.where(:user_id => current_user.id).last  #existing user signing in
  end
end
