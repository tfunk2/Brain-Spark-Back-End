class CreateNumberFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :number_facts do |t|
      t.integer :number
      t.string :fact

      t.timestamps
    end
  end
end
