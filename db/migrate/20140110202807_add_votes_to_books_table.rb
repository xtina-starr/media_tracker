class AddVotesToBooksTable < ActiveRecord::Migration
  def change
  	add_column :books, :votes, :integer, :default => 0
  end
end
