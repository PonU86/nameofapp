class CommentsController < ApplicationController
	  def create
	    @product = Product.find(params[:product_id])
			@comment = @product.comments.new(comment_params)
	    @comment.user = current_user
	    @comment.save
			@user = current_user
	    redirect_to product_path(@product) and return


			respond_to do |format|
				if @comment.save
					format.html { redirect_to (@product) and return, notice: 'Review was created successfully.' }
					format.json { render :show, status: :created, location: @product }
					format.js
				else
					format.html { redirect_to (@product) and return, alert: 'Review was not saved succeefully.' }
					format.json { render json: @comment.errors, status: :unprocessable_entity }
				end
			end
		end

		def destroy
			@comment = Comment.find(params[:id])
			product = @comment.product
			@comment.destroy
			redirect_to product and return
	  end

	  private

    def comment_params
      params.require(:comment).permit(:user_id, :body, :rating)
    end

end
