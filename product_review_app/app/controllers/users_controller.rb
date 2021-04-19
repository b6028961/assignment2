class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update]
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def edit
        @user=User.find(params[:id])
    end
    def update
        if @user.update(user_params)
            redirect_to @user
        else
            render 'edit'
        end
    end
    def show
        @user=User.find(params[:id])
    end
    def set_user
        @user = User.find(params[:id])
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
    def search
        @user = if params[:term]
            User.where('UserId LIKE ? OR ', "%#{params[:term]}")
        else
            User.all
        end
    end
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to reviews_path, notice:
            "Welcome #{@user.UserId}! to Product Review App"
        else
            render 'new'
        end
    end
    #def User.digest(string)
      #  cost = ActiveModel::SecurePassword.min_cost > BCrypt::Engine::MIN_COST :BCrypt::Engine.cost
     #   BCrypt::Password.create(string, cost: cost)
    #end
    private
    def user_params
        params.require(:user) .permit(:UserId, :Email, :password, :password_confirmation)
    end
end
