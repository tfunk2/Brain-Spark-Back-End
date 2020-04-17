class TriviaController < ApplicationController
    def index
        @trivia = Trivium.all

        render json: @trivia
    end

    def show
        @trivium = Trivium.find(params[:id])
        render json: @trivium
    end

    def update
        find_trivium = Trivium.find(params[:id])
        @update_trivium = find_trivium.update(trivia_params)
        render json: @update_trivium
    end

    private

    def trivia_params
        params.require(:trivium).permit(
            :category, 
            :difficulty, 
            :question, 
            :correct_answer, 
            :incorrect_answer_1,
            :incorrect_answer_2,
            :incorrect_answer_3
            )

      end
end
