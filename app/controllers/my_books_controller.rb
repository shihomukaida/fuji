class MyBooksController < ApplicationController
  before_action :set_my_book, only: [:show, :edit, :update, :destroy]

  # GET /my_books
  # GET /my_books.json
  def index
    @my_books = MyBook.all
  end

  # GET /my_books/1
  # GET /my_books/1.json
  def show
  end

  # GET /my_books/new
  def new
    @my_book = MyBook.new
  end

  # GET /my_books/1/edit
  def edit
  end

  # POST /my_books
  # POST /my_books.json
  def create
    @my_book = MyBook.new(my_book_params)

    respond_to do |format|
      if @my_book.save
        format.html { redirect_to @my_book, notice: 'My book was successfully created.' }
        format.json { render :show, status: :created, location: @my_book }
      else
        format.html { render :new }
        format.json { render json: @my_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_books/1
  # PATCH/PUT /my_books/1.json
  def update
    respond_to do |format|
      if @my_book.update(my_book_params)
        format.html { redirect_to @my_book, notice: 'My book was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_book }
      else
        format.html { render :edit }
        format.json { render json: @my_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_books/1
  # DELETE /my_books/1.json
  def destroy
    @my_book.destroy
    respond_to do |format|
      format.html { redirect_to my_books_url, notice: 'My book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_book
      @my_book = MyBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_book_params
      params.require(:my_book).permit(:book_name, :author, :price, :company, :sales_day, :picture)
    end
end
