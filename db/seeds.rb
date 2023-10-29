# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Residential.create(description: "2 story home with large backyard and swimming pool.", year_built: 1979, square_feet: 2400, bedrooms: 4, bathrooms: 2.5, floors: 2, availability: "10/29/2023", address: "1234 Test Street, Los Angeles, CA 12345", price: 1800000)

Residential.create(description: "Single store home with large kitchen and detached single-car garage", year_built: 1963, square_feet: 1600, bedrooms: 2, bathrooms: 2, floors: 1, availability: "11/15/2023", address: "555 Unknown Avenue, CA 12345", price: 680000)
