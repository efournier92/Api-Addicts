class VotesController < ApplicationController 
  before_filter :authenticate_user!

  def upvote
    api    = Api.find(params[:id])
    api.reviews.first.votes.create
    redirect_to(api_path)
  end

  def downvote
    user = current_user.id
    found_vote = Vote.find_by(user: user, review: params[:review_id])
     found_vote == nil
      Vote.create(params[:review_id], user, false)
      render json: Vote.calculate_votes(params[:review_id])
      return
  end

  def create_vote(review_id, user_id, vote_bool)
    Vote.create(
      user: User.find(user_id),
      review: Review.find(review_id),
      up_vote?: vote_bool)
  end

  # def flip_vote(vote)
  #   if vote.up_vote?
  #     vote.up_vote?=false
  #   else
  #     vote.up_vote?=true
  #   end
  #   vote.save
  # end

  private

  def current_user
    warden.user
  end

  def warden
    env['warden']
  end
end
