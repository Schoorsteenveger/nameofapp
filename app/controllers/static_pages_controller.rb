class StaticPagesController < ApplicationController
  def index
  end

  # GET /landing_page
  # GET /landing_page.json
  def landing_page
    @featured_product = Product.second
  end
end



