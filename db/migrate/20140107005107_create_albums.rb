class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :artist
      t.text :description
    end
  end
end
