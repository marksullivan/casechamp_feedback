class CreateInterestIndications < ActiveRecord::Migration[5.0]
  def change
    create_table :interest_indications do |t|
      t.boolean :interest
      t.string :competition_name
      t.string :email_address
      t.string :end_date

      t.timestamps

    end
  end
end
