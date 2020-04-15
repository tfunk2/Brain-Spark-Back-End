class DateFactsController < ApplicationController
    def index
        @date_facts = DateFact.all

        render json: @date_facts
    end
end
