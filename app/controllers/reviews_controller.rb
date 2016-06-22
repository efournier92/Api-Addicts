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

  def vote
    user_vote = Votes.find_by(user: current_user, review: params[:review_id])

    if user_vote == nil
      create_vote(params[:api_id], user, true)
      render json: Votes.calculate_votes(params[:review_id])
      return
    else
      flip_vote(user_vote)
      render json: Votes.calculate_votes(params[:review_id])
    end
  end

  def downvote
    user = current_user.id
    found_vote = Votes.find_by(user: user, api: params[:api_id])

    if found_vote == nil
      create_vote(params[:api_id], user, false)
      render json: Votes.calculate_votes(params[:api_id])
      return
    else
      flip_vote(found_vote)
      render json: Votes.calculate_votes(params[:api_id])
    end
  end

  def create_vote(api_id, user_id, vote_bool)
    Votes.create(
      user: User.find(user_id),
      api: Api.find(api_id),
      user_vote: vote_bool)
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
