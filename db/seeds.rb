# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
companies = Company.create([
    {
        name: "amazon",
        image_url: "https://1000logos.net/wp-content/uploads/2016/10/Amazon-Logo.png"
    },
    {
        name: "MG",
        image_url: "https://www.realites.com.tn/wp-content/uploads/2015/12/magasin-g%C3%A9n%C3%A9ral.png"
    },
    {
        name: "Pizza_pai",
        image_url: "https://upload.wikimedia.org/wikipedia/fr/thumb/9/9a/Logo_Pizza_Pa%C3%AF_2017.svg/1200px-Logo_Pizza_Pa%C3%AF_2017.svg.pnghttps://upload.wikimedia.org/wikipedia/fr/thumb/9/9a/Logo_Pizza_Pa%C3%AF_2017.svg/1200px-Logo_Pizza_Pa%C3%AF_2017.svg.png"
    }

])
reviews = Review.create([
    {
        title: "bad comapany",
        description: "i have bad experience",
        score: 1,
        company: companies.first
    },
    {
        title: "good comapany",
        description: "i had good experience",
        score: 4,
        company: companies.first
    }
])