class VotesController < ApiController
  before_filter :authenticate_user!

  def vote
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
end
end
