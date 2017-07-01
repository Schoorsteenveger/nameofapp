class Product < ApplicationRecord
  has_many :orders

  def self.search(search_term)
    Rails.env.production? ? @products = Product.where("name ilike ?", "%#{search_term}%") : @products = Product.where("name LIKE ?", "%#{search_term}%")
  end
end

