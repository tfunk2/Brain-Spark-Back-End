class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def create
        @new_user = User.new(user_params) 
        if @new_user.save
            render json: @new_user
          else
            render json: @new_user.errors.messages
          end
    end

    private

    def user_params
        params.require(:user).permit([:username, :password, :lifetime_score])
    end
end
