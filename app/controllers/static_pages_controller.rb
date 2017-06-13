class StaticPagesController < ApplicationController
  def index
  end

  # GET /landing_page
  # GET /landing_page.json
  def landing_page
    @products = Product.limit(4)
  end
end



