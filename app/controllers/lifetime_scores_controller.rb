class LifetimeScoresController < ApplicationController
    def index
        @lifetime_scores = LifetimeScore.all
        render json: @lifetime_scores
    end

    def create
        @lifetime_score = LifetimeScore.create(
            cumulative_score: 0
        )
        render json: {message: lifetime score created, status: :created}
    end

    def update
        @find_lifetime_score = LifetimeScore.find(params[:id])
        @update_lifetime_score = LifetimeScore.update(params[:lifetime_score])
    end
end
