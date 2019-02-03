require 'rails_helper'

describe Comment do
  let(:user){ Comment.create!(:user) }
  let(:product){ Product.create!(name: "Sweet bike") }

  before do
    product.comments.create!(body: "These bikes are the best!")
  end

  it "is not valid without a user" do
    expect(Comment.new(rating: 3, body: "comment")).not_to be_valid
  end

  it "is not valid without a body" do
    expect(Comment.new(body: "")).not_to be_valid
  end

  it "is not valid without a rating" do
    expect(Comment.new(rating: nil)).not_to be_valid
  end

  it "is not valid without a product_id" do
    expect(Comment.new(product_id: nil)).not_to be_valid
  end


end
