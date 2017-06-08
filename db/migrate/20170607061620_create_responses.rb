class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.integer :interest_indication_id
      t.string :outcome
      t.integer :likely_to_recommend
      t.boolean :do_again
      t.text :improvement_suggestions

      t.timestamps

    end
  end
end
