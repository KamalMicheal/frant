class BooksController < ApplicationController
  include ApplicationHelper

  def index
    @page_title = I18n.t(:books_title)
    @books = Book.joins(:author).joins(:category).
                  paginate(page: params[:page]).
                  order('created_at desc')
    @books_count = Book.count
    @authors = Author.all.order('priority desc, name')
  end

  def details
  end

  def new
    validate_and_return_if_not_admin
    @page_title = I18n.t(:books_title) + ' - ' + I18n.t(:add_new)
    @book = Book.new
  end

  def create
    validate_and_return_if_not_admin
    book = Book.new(book_params)
    if book.save
      flash[:notice] = I18n.t(:item_was_added_successfully)
      redirect_to books_path if book.save
    else
      render :new
    end

  end

  def edit
    validate_and_return_if_not_admin
    @page_title = I18n.t(:books_title) + ' - ' + I18n.t(:edit)
    @book = Book.find_by_id(params[:id])
    redirect_to books_path unless @book
  end

  def update
    validate_and_return_if_not_admin
    book = Book.find_by_id(params[:id])
    redirect_to books_path unless book
    redirect_to books_path if book.save(book_params)
  end

  def delete
    validate_and_return_if_not_admin
    book = Book.find_by_id(params[:id])
    book.delete if book
    flash[:notice] = I18n.t(:item_was_deleted_successfully)
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :abstract, :file, :author_id, :category_id)
  end
end
