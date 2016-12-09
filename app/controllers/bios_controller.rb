class BiosController < ApplicationController
  #before_action :set_bio, only: [:profile, :edit, :update, :destroy]

  # Layout for user accounts
  layout "account"

  # Show Users Summary Dashboard
  def show
      if Bio.where(:user_id => current_user.id).last == nil #brand new user signed up    
         render("/bios/new/")
      else
        @bio = Bio.where(:user_id => current_user.id).last  #existing user signing in
        render("/bios/show/")
      end
  end

  # Show Users Profile
  def profile
      @bio = Bio.where(:user_id => current_user.id).last  # Get last updated bio of user
  end

  def update
    #New biographical history is created for user
    @bio = Bio.create(:user_id => current_user.id, #id remains fixed
               :first_name => params[:bio][:first_name].strip.humanize, 
               :last_name => params[:bio][:last_name].strip.humanize, 
               :email => params[:bio][:email].strip.humanize, 
               :phone_number => params[:bio][:phone_number].strip.humanize, 
               :address => params[:bio][:address].strip.humanize, 
               :state => params[:bio][:state].strip.humanize, 
               :zipcode => params[:bio][:zipcode].strip.humanize, 
               :country => params[:bio][:country].strip.humanize,  
               :gender => params[:bio][:gender].strip, 
               :age => params[:bio][:age].strip.humanize
               )
    @bio.save
    if @bio.save
      redirect_to("/bios/show/#{@bio.id}", :notice => "Profile updated successfully.")
    else
      render("bios/edit.html.erb")
    end
  end

  # Edit Users Account Information
  def edit
    @bio = Bio.where(:user_id => current_user.id).last  # Get last updated bio of user
  end

  # Delete Users Account 
  def destroy
    @bio.destroy
    respond_to do |format|
      format.html { redirect_to bios_url, notice: 'Bio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
