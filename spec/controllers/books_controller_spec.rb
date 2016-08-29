require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  describe 'GET #index' do
    before :all do
      Book.delete_all
      @book = FactoryGirl.create :book, title: 'Test Book'
    end

    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'returns a book in listing' do
      get :index
      books = assigns(:books)
      expect(books.count).to eq(1)
      expect(books).to include(@book)
    end
  end

  describe 'GET #details' do
    it 'returns http success' do
      get :details
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #create' do
    it 'returns http success' do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #edit' do
    it 'returns http success' do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #update' do
    it 'returns http success' do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #delete' do
    it 'returns http success' do
      get :delete
      expect(response).to have_http_status(:success)
    end
  end

end
