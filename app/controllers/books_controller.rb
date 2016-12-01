class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update]

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author_last_name, :author_first_name, :genre, :rating)
  end

  def index
    @books = Book.all

    render json: @books
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created, location: @books
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      head :no_content
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end
  private :set_book, :book_params
end
