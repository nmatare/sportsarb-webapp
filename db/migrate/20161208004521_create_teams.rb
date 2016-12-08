class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.text :team_details
      t.string :sport
      t.date :game_date
      t.integer :points
      t.datetime :created_at
      t.integer :transaction_id

      t.timestamps
    end
  end
end
