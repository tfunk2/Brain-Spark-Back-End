class CreateLifetimeScores < ActiveRecord::Migration[6.0]
  def change
    create_table :lifetime_scores do |t|
      t.integer :cumulative_score

      t.timestamps
    end
  end
end
