class MathQuestionsController < ApplicationController
    def index
        @math_questions = MathQuestion.all

        render json: @math_questions
    end
end
