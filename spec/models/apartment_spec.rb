require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) {User.create email: 'vivi@gmail.com', password: '123456', password_confirmation: '123456'}
  it"should have a street" do
    apartment = Apartment.create(
      #  street: '1234',
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
    expect(apartment.errors[:street]).to_not be_empty
    end
  it"should have a city" do
    apartment = Apartment.create(
       street: '1234',
        # city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:city]).to_not be_empty
  end
  it"should have a street" do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        # state: 'AZ'
        manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:state]).to_not be_empty
  end
  it"should have a manager " do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        # manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:manager]).to_not be_empty
  end
  it"should have a  managers_email " do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        # email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:email]).to_not be_empty
  end
  it"should have a  price " do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        email: 'vivi@gmail.com',
        # price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:price]).to_not be_empty
  end
  it"should have a  bedrooms " do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        # bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:bedrooms]).to_not be_empty
  end
  it"should have a  bathrooms " do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        # bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:bathrooms]).to_not be_empty
  end
  it"should have a  pets " do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        # pets: 'yes', 
        user_id: user.id
    ) 
    expect(apartment.errors[:pets]).to_not be_empty
  end
  it"should have a user_id " do
    apartment = Apartment.create(
       street: '1234',
        city: 'elcajon',
        state: 'AZ',
        manager: 'lily',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        # user_id: user.id
    ) 
    expect(apartment.errors[:user_id]).to_not be_empty
  end
end
