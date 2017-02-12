class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    render :new
  end

  def create
    Book.new(book_params).save
    redirect_to action: :index
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to action: :index
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
