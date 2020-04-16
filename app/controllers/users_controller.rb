class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end
    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @new_user = User.create(
            username: params[:username],
            password_digest: params[:password_digest],
            lifetime_score: 0
        ) 
        render json: @new_user
    end

    # private

    # def user_params
    #     params.require(:user).permit([:username, :password_digest, :lifetime_score])
    # end
end
