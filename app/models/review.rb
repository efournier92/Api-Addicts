class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :api

  validates :body, presence: true
  validates :rating, inclusion: {in: [1, 2, 3, 4, 5]}
  validates :user_id, presence: true
  validates :api_id, presence: true

  def review_owner?(user)
    if self.user == user
      true
    else
      false
    end
  end

  def calculate_votes
    upvotes   = Votes.where(user_vote: true, review: @review).count
    downvotes = Votes.where(user_vote: false, api: @review).count
    results   = {score: upvotes - downvotes, total: upvotes + downvotes}
  end

end
