class CreateDateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :date_facts do |t|
      t.text :date_of_fact
      t.text :fact

      t.timestamps
    end
  end
end
