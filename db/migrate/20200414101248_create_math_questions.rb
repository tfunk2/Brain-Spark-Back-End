class CreateMathQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :math_questions do |t|
      t.text :question
      t.integer :correct_answer
      t.text :difficulty

      t.timestamps
    end
  end
end
