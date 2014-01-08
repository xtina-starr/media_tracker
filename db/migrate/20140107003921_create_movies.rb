class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.string :director
      t.text :description
    end
  end
end
