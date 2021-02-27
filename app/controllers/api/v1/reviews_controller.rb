module Api 
    module v1
        class ReveiwsController < ApplicationController
            protect_from_forgery with: :null_session
            def create 
                review = Review.new(review_params)
                if review.save
                    render json: ReviewSerializer.new(review).serialized_json
                else
                    render json: {error: review.error.messege }
                end
            end
            def destroy 
                review = Review.find(params[:id])
                if review.destroy
                    head :no_content
                else
                    render json: {error: review.error.messege }
                end
            end
            private
            def review_params
                params.require(:review).permit(:title, :description, :score, :company_id)
        end
    end


end
end