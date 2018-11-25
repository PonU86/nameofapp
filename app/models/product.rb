class Product < ApplicationRecord
  product = Product.create(name: "Test Product", description: "Lorem Ipsum", image_url: "http://careerfoundry.com/images/bike.jpg")
end

def self.search(search_term)
  Product.where("name LIKE ?", "%#{search_term}%")
end
