class BooksController < OpenReadController
  before_action :set_book, only: [:show, :update, :destroy]

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author_last_name, :author_first_name)
  end

  def index
    @books = Book.all

    render json: @books
  end

  def search
    # puts book_params[:title]
    # test what is returned in server
    @books = Book.select('books.title, books.author_last_name, books.author_first_name').where('lower(books.title) like ?  ', "%#{book_params[:title]}%".downcase)

    render json: @books
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created
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

  def destroy
    @book.destroy

    head :no_content
  end
  private :set_book, :book_params
end
