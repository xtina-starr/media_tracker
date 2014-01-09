require "spec_helper"

describe MoviesController do
  let!(:movie) { Movie.create(movie_name: "Eat, Pray, Love") }

  describe "GET 'index'" do 

    it "is successful" do
      get :index
      expect(response).to be_successful
    end
  

    it "assigns @movies" do
      get :index
      expect(assigns(:movies).first).to be_an_instance_of Movie 
    end
  end

  describe "POST 'create'"  do

    it "is successful" do
      post :create, movie: {movie_name: "Twilight"}
      expect(response).to be_successful
    end

    it "redirects to a show template" do
      post :create
      expect(response).to redirect_to movie_path(assigns(:movie).id)
    end

    it "assigns @movie" do
      post :create
      expect(assigns(:movie)).to be_a Movie
    end

    context "when invalid" do

      it "renders the :new template" do
        post :create
        expect(response).to render_template :new
      end
    end
  end
end