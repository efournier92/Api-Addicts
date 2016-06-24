class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :api
  has_many   :votes

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

  def calculate_votes(review_id)
    upvotes   = Vote.where(up_vote?: true,  review: review_id).count
    downvotes = Vote.where(up_vote?: false, review: review_id).count
    { score: upvotes - downvotes, total: upvotes + downvotes }
  end
end
