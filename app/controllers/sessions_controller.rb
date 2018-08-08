class SessionsController < ApplicationController


     def destroy
        reset_session
        redirect_to users_sign_up_path
    end
    
    def new
        @user = User.new   
    end  

    def create 
       u = User.find_by(email: params [:user][:email]).try(:authenticate, params[:user][:password])
       if u.present?
        redirect_to  root_path
        else
        redirect_to user_sign_up_path
    end   
    
end
