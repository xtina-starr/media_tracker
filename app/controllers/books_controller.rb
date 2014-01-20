class BooksController < ApplicationController

  def index
    
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to books_show_path(@book.id)
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    if @book.save
      redirect_to books_show_path(@book.id)
    else
      render 'edit'
    end
  end

  def delete
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  def upvote
    @book = Book.find(params[:id])
    @book.update(votes: @book.votes + 1)

    redirect_to books_show(@book.id)
  end

  private
  def book_params
    params.require(:book).permit(:book_name, :author, :description)
  end

end