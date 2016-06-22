class ReviewsController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]

  def index
    @reviews = Reviews.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def upvote
    api    = params[:api_id]
    review = params[:id]
    user   = current_user.id
   Vote.create(api_id: api, user_id: user, review_id: review, up_vote?: true) 
    redirect_to(api_path(api))
  end

  def downvote
    api    = params[:api_id]
    review = params[:id]
    user   = current_user.id
   Vote.create(api_id: api, user_id: user, review_id: review, up_vote?: false) 
    redirect_to(api_path(api))
  end

  def create
    @api = Api.find(params[:api_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.api_id = @api.id
    
    if @review.save
      flash[:success] = 'Review Submitted Successfully!'
    else
      flash[:warning] = @review.errors.full_messages.join(', ')
      flash[:warning] += 'Review Submission Failure'
    end
    redirect_to api_path(@api)
  end

  def edit
    @api = Api.find(params[:api_id])
    @review = Review.find(params[:id])
    if @review.save
      # ReviewMailer.new_review(@review).deliver_later
      flash[:success] = 'Review Updated Successfully!'
    else
      flash[:warning] = @review.errors.full_messages.join(', ')
      flash[:warning] += 'Review Update Failed'
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to apis_path
      flash[:success] = "Review Updated!"
    else
      flash[:failure] = "Review Not Updated!"
      render :edit
    end
  end

  def destroy
    @api = Api.find(params[:api_id])
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:success] = "Review has been deleted"
      redirect_to apis_path
    end
  end

  def flip_vote(vote)
    if vote.user_vote
      vote.user_vote = false
    else
      vote.user_vote = true
    end
    vote.save
  end

  private

  def review_params
    params.require(:review).permit(:body, :rating)
  end
end
