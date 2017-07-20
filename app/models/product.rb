class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  validates :name, presence: true

  def self.search(search_term)
    Rails.env.production? ? @products = Product.where("name ilike ?", "%#{search_term}%") : @products = Product.where("name LIKE ?", "%#{search_term}%")
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowerest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end
end

