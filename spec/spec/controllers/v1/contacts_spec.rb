require 'rails_helper'

describe ContactsController, type: :controller do

  it 'request index and return 200 ok' do
    request.accept = 'application/json'
    get :index
    expect(response).to have_http_status(200)
  end

  it 'request index and return 406 (sem accept) ' do
    get :index
    expect(response).to have_http_status(406)
  end

end