require 'rails_helper'

describe Comment do
  let(:user){ Comment.create!(:user) }
  let(:product){ Product.create!(name: "Sweet bike") }

  before do
    product.comments.create!(body: "These bikes are the best!")
  end



end
