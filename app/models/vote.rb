class Vote < ActiveRecord::Base
  belongs_to :review
  belongs_to :user

  def create(review_id, user_id, up_or_down)
    Votes.create(
      user: User.find(user_id),
      review: Review.find(review_id),
      user_vote: up_or_down)
  end

  def flip_vote(vote)
    if vote.user_vote
      vote.user_vote = false
    else
      vote.user_vote = true
    end
    vote.save
  end
end
