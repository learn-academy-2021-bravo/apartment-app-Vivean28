require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) {User.create email: 'vivi@gmail.com', password: '123456', password_confirmation: '123456'}
  describe "GET /index" do

    it" gets a list of all the apartments" do
    Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
      ) 

      get '/apartments'
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
    end
  end
end
