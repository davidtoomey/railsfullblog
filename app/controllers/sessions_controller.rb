class SessionsController < ActionController::Base

def new
end

def create 
  puts params[:username]
	@user = User.where(username: params[:username]).first
	if @user && @user.password == params[:password]
    puts "!!!!!!!!!!!!!!!!!! PASSWORD DETECTED!!!!!!!!!!!!!!!!!!!!"
		session[:user_id] = @user.id
    redirect_to controller: "users",action: "show", id: @user.id
  else
    render 'failed'

  end
  
end

def failed
end

end