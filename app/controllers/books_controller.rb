class BooksController < ApplicationController
  include ApplicationHelper

  def index
    @books = Book.joins(:author).joins(:category).
                  paginate(page: params[:page]).
                  order('authors.priority, categories.priority')
    @books_count = Book.count
    @authors = Author.all.order('priority desc, name')
  end

  def details
  end

  def new
    validate_and_return_if_not_admin
    @book = Book.new
  end

  def create
    validate_and_return_if_not_admin
  end

  def edit
    validate_and_return_if_not_admin
  end

  def update
    validate_and_return_if_not_admin
  end

  def delete
    validate_and_return_if_not_admin
    book = Book.find_by_id(params[:id])
    book.delete if book
  end
end
