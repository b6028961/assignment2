class SessionsController < ApplicationController
    def index
        redirect_to reviews_path
    end
    def new
    end
    def create
        user=User.find_by_UserId(params[:UserId])
        if user && user.authenticate(params[:password])
            session[:user_id]=user.id
            redirect_to root_path, notice:
            "Welcome #{user.UserId}!, you are now logged in"
        else 
            render 'new', alert:
            "Invalid Username or Password, try again"
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice:
        "You have successfully logged out"
    end
end
