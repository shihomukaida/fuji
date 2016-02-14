require 'test_helper'

class MyBooksControllerTest < ActionController::TestCase
  setup do
    @my_book = my_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_book" do
    assert_difference('MyBook.count') do
      post :create, my_book: { author: @my_book.author, book_name: @my_book.book_name, company: @my_book.company, price: @my_book.price, sales_day: @my_book.sales_day }
    end

    assert_redirected_to my_book_path(assigns(:my_book))
  end

  test "should show my_book" do
    get :show, id: @my_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_book
    assert_response :success
  end

  test "should update my_book" do
    patch :update, id: @my_book, my_book: { author: @my_book.author, book_name: @my_book.book_name, company: @my_book.company, price: @my_book.price, sales_day: @my_book.sales_day }
    assert_redirected_to my_book_path(assigns(:my_book))
  end

  test "should destroy my_book" do
    assert_difference('MyBook.count', -1) do
      delete :destroy, id: @my_book
    end

    assert_redirected_to my_books_path
  end
end
