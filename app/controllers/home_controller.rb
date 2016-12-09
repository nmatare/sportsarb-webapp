class HomeController < ApplicationController

	# Allow browsing of static pages 
 	skip_before_action :authenticate_user!

	def summary
	end

	def contact
	end

	def white_paper
	end

	def hist_perform
	end

end