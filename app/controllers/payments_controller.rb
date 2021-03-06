class PaymentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @user = current_user

    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will change the user's card
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price^100).to_i, # amount in cents, again
        currency: "usd",
        source: token,
        description: params[:stripeEmail]
      )

      if charge.paid
        Order.create!(
          product_id: @product.id,
          user_id: @user.id,
          total: @product.price
        )
        UserMailer.order_placed(@user, @product).deliver_now
      end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunatley, there was an erorr processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end

end
