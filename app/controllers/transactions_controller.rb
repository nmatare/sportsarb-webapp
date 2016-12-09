class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  # User account pages follow account user layout
  layout "account"

  # Add Money to users account
  def deposit
  end

  # Show Users Balance
  def balance
  end
  
end
