class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  def set_book
    @book = Book.find(params[:id])
  end

  # def book_params
  #   params.require(:book).permit(:title, :author_last_name, :author_first_name, :genre, :rating)
  # end

  def index
    @books = Book.all

    render json: @books
  end

  def show
    render json: Book.find(params[:id])
  end
end
