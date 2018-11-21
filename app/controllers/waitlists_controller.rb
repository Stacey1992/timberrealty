class WaitlistsController < ApplicationController

	def new
		@waitlist = Waitlist.new
	end

	def create
		@waitlist = Waitlist.new(waitlist_params)
		if @waitlist.save
			redirect_to url_for(:controller => "sessions", :action => "landing2")
			flash[:notice] = "Thanks! We'll be in touch soon about your free trial!"
		else
			flash[:alert] = "Oops! Something went wrong, please try again"
			redirect_to  url_for(controller: "sessions", action: "landing2")
		end
	end

	private
	def waitlist_params
		params.require(:waitlist).permit(:id, :email, :first_name)
	end


end
