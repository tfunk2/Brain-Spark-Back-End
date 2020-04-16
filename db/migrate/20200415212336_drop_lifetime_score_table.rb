class DropLifetimeScoreTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :lifetime_scores
  end
end
