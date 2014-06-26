class ChangeStringsToIntegers < ActiveRecord::Migration
  def change
    change_column :users, :uid, :integer
    change_column :tifos, :track_id, :integer
  end
end
