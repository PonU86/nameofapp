class SimplePagesController < ApplicationController
  def index
  end

=begin
  def landing_page
    @featured_product = Product.first
  end
=end

  def landing_page
    @products = Product.limit(3)
  end
end
