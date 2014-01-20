class AlbumsController < ApplicationController

  def index
    
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)

    if @album.save
      redirect_to album_show_path(@album.id)
    else
      render 'new'
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update(album_params)

    if @album.save
      redirect_to album_show_path(@album.id)
    else
      render 'edit'
    end
  end

  private
  def album_params
    params.require(:album).permit(:album_name, :artist, :description)
  end

end