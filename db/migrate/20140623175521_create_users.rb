class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :permalink
      t.string :avatar_url

      t.timestamps
    end
  end
end
