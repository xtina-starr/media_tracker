class AddVotesColumnToTable < ActiveRecord::Migration
  def change
    add_column :movies, :votes, :integer, :default => 0
  end
end
