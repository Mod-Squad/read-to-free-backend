class BookshelvesController < OpenReadController
  before_action :set_bookshelf, only: [:show, :update, :destroy]

  # GET /bookshelves
  # GET /bookshelves.json
  def index
    @bookshelves = Bookshelf.all

    render json: @bookshelves
  end

  # GET /bookshelves/1
  # GET /bookshelves/1.json
  def show
    render json: @bookshelf
  end

  # POST /bookshelves
  # POST /bookshelves.json
  def create
    @bookshelf = current_user.bookshelves.build(bookshelf_params)

    if @bookshelf.save
      render json: @bookshelf, status: :created
    else
      render json: @bookshelf.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookshelves/1
  # PATCH/PUT /bookshelves/1.json
  def update
    @bookshelf = Bookshelf.find(params[:id])

    if @bookshelf.update(bookshelf_params)
      head :no_content
    else
      render json: @bookshelf.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookshelves/1
  # DELETE /bookshelves/1.json
  def destroy
    @bookshelf.destroy

    head :no_content
  end

  private

  def set_bookshelf
    @bookshelf = Bookshelf.find(params[:id])
  end

  def bookshelf_params
    params.require(:bookshelf).permit(:user_id, :book_id)
  end
end
