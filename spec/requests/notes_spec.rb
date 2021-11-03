require 'rails_helper'

RSpec.describe 'Notes', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/notes/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    it 'returns http success' do
      post '/notes/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/notes/update'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /notes' do
    it 'returns http success' do
      get '/notes'
      expect(response).to have_http_status(:success)
    end
  end

  # describe 'GET /show' do
  #   it 'returns http success' do
  #     get '/notes/:id'
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe 'PATCH /update' do
  #   it 'returns http success' do
  #     patch '/notes/:id'
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe 'PUT /update' do
  #   it 'returns http success' do
  #     put '/notes/:id'
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe 'DELETE /destroy' do
  #   it 'returns http success' do
  #     delete '/notes/:id'
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /edit" do
  #   it "returns http success" do
  #     get "/notes/:id/edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /destroy" do
  #   it "returns http success" do
  #     get "/notes/destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe 'GET /index' do
    it 'returns http success' do
      get '/notes/index'
      expect(response).to have_http_status(:success)
    end
  end
end
