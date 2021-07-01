# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create email: "vivean@gmail", password: "test123",
password_confirmation: "test123"

apartments = [
    {
        street: '99885',
        city: 'wally',
        state: 'CA',
        manager: 'lina',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id

    },
    {
       street: '0875',
        city: 'mission',
        state: 'AWDC',
        manager: 'keexitly',
        email: 'vivi@gmail.com',
        price: '$200',
        bedrooms: 2,
        bathrooms: 2.5,
        pets: 'yes', 
        user_id: user.id
    }
]
apartments.each do|value|
    Apartment.create value
    puts "Creating apartments: #{value}"
end
