class SessionsController < ActionController::Base

def new
end

def create 
  puts params[:username]
	@user = User.where(username: params[:username]).first
	if @user && @user.password == params[:password]
    puts "!!!!!!!!!!!!!!!!!! PASSWORD DETECTED!!!!!!!!!!!!!!!!!!!!"
		session[:user_id] = @user.id
    redirect_to controller: "posts",action: "index"
  else
    render 'failed'

  end
  
end

 def destroy
    session.clear
    redirect_to '/'
end

def failed
end

def destroy
    session.clear
    redirect_to '/'
end

end