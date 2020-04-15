class CreateMathQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :math_questions do |t|
      t.string :question
      t.integer :correct_answer
      t.string :difficulty

      t.timestamps
    end
  end
end
