class SessionsController < ApplicationController

    skip_before_action :authorized_user, only: [:login]

    def login
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
            session[:logged_user] = user.id
            render json: user, status: :ok
        else
            render json: {error: "Invalid Password or Username", status: :unauthorized}
        end 
    end
    
    def destroy
        session.delete :logged_user
    end
end
