class ApplicationController < ActionController::Base
  	
	# Secruity Features
	config.force_ssl = true #force SSL authentication
  	#protect_from_forgery with: :exception #server side authentication handshake; prevents malicious POST: won't allow files to be uploaded #need to debug

  	# Authentication Walls
 	before_action :authenticate_user!

	def after_sign_in_path_for(user)
	  "/bios/show/" + current_user.id.to_s
	end

end
