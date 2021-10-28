require 'rails_helper'

RSpec.describe HomepageController, type: :controller do
  it 'responds with 200' do
    get :index
    assert_response :success
  end
end
