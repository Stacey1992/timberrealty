class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)
		if @message.save
			redirect_to url_for(:controller => "sessions", :action => "landing2")
			flash[:notice] = "Thanks for your message! We'll respond shortly"
		else
			flash[:alert] = "Oops! Something went wrong, please try again"
			redirect_to  url_for(controller: "sessions", action: "landing2")
		end
	end

	private
	def message_params
		params.require(:message).permit(:id, :message, :first_name, :subject, :email)
	end

end
