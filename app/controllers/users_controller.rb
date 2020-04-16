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

    def update
        found_user = User.find(params[:id])
        @update_user = found_user.update(
            lifetime_score: params[:lifetime_score]
        )
        render json: @update_user
    end

    def destroy
        found_user = User.find(params[:id])
        @deleted_user = found_user.destroy

        render json: @deleted_user
    end

    # private

    # def user_params
    #     params.require(:user).permit([:username, :password_digest, :lifetime_score])
    # end
end
