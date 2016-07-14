class BooksController < ApplicationController
  def index
    @books = Book.joins(:author).joins(:category).
                  paginate(page: params[:page]).
                  order('authors.priority, categories.priority')
  end

  def details
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
