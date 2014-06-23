class CreateTifos < ActiveRecord::Migration
  def change
    create_table :tifos do |t|
      t.integer :team_id
      t.integer :user_id
      t.string :track_id
      t.string :token

      t.timestamps
    end
  end
end
