class CreateTrivia < ActiveRecord::Migration[6.0]
  def change
    create_table :trivia do |t|
      t.text :category
      t.text :difficulty
      t.text :question
      t.text :correct_answer
      t.text :incorrect_answer_1
      t.text :incorrect_answer_2
      t.text :incorrect_answer_3

      t.timestamps
    end
  end
end
