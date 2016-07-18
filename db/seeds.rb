require 'faker'

  5.times do |i|
    category = Category.create!(name: Faker::Commerce.department)

      3.times do
        category.articles.create!(title: Faker::Commerce.product_name, body: Faker::Company.catch_phrase, email: Faker::Internet.email, price: 1, author: Faker::App.author)
      end
  end
