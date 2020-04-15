class CreateDateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :date_facts do |t|
      t.string :date_of_fact
      t.string :fact

      t.timestamps
    end
  end
end
