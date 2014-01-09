class Movie < ActiveRecord::Base
  validates :movie_name, presence: true

  # def upvote
  #   self.votes += 1  
  # end

end