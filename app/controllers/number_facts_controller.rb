class NumberFactsController < ApplicationController
    def index
        @number_facts = NumberFact.all

        render json: @number_facts
    end
end
