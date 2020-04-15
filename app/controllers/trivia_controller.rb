class TriviaController < ApplicationController
    def index
        @trivia = Trivium.all

        render json: @trivia
    end
end
