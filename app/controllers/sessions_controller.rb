class SessionsController < ApplicationController

def landing
@waitlist = Waitlist.new
@message = Message.new
end

def landing2
@waitlist = Waitlist.new
@message = Message.new

end

def about_us
end


end
