class VotesController < ApiController
  before_filter :authenticate_user!

  def upvote
    review = params[:review_id]
    user_vote = Votes.find_by(user: current_user, review: review)

    if user_vote == nil
      Vote.create(review, current_user, up_or_down)
      render json: Votes.calculate_votes(review)
      return
    else
      user_vote.update(review, current_user, up_or_down)
      render json: Votes.calculate_votes(review)
    end
  end

  def create(review_id, user_id, up_vote?)
    Votes.create(
      user:     User.find(user_id),
      review:   Review.find(review_id),
      up_vote?: vote_bool
    )
  end

  def update(review_id, user_id, up_vote?)
    vote = Vote.where(
      user: User.find(user_id)
      review: Review.find(review_id)
    )
    vote.up_vote? = up_vote?
    vote.save
  end
end
