class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_id
      t.integer :tifo_id

      t.timestamps
    end
  end
end
