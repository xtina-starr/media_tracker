require "spec_helper"

describe Movie do
  let(:movie) { Movie.new(movie_name: "Eat, Pray, Love") }

  describe "validations" do

    it "must have a name" do
      movie = Movie.create
      expect(movie.errors[:movie_name]).to include "can't be blank"
    end

    it "has a unique name" do
      invalid_movie = Movie.new(movie_name: "Eat, Pray, Love")
      expect(invalid_movie.valid?).to eq false
      expect(invalid_movie).to be_invalid
      expect(invalid_movie.errors[:movie_name]).to include "has already been taken"
    end
  end

  describe "#upvote" do
    it "increments the rank field by 1" do
      count = movie.votes
      movie.upvote
      expect(movie.count.votes).to eq count + 1
    end
  end

end