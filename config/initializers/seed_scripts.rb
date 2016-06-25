module SeedScripts

  TOTAL_USERS   = User.all.count   - 1
  TOTAL_APIS    = Api.all.count    - 1
  TOTAL_REVIEWS = Review.all.count - 1

  def self.review_apis
    2.times do
      review = SeedData::REVIEWS.sample
      Review.create(
        body:    review[:reason],
        rating:  review[:rating],
        user_id: rand(1..TOTAL_USERS),
        api_id:  rand(1..TOTAL_APIS)
      )
    end
  end

  def self.upvote_reviews
    4.times do
      Vote.create(
        user_id:   rand(1..TOTAL_USERS),
        api_id:    rand(1..TOTAL_APIS),
        review_id: rand(1..TOTAL_REVIEWS),
        up_vote?:  [true, false].sample
      )
    end
  end

  def self.cleanup_oldest_reviews
    unless Review.all.count < 200
      2.times do
        Review.all.sample.destroy
      end
    end
  end

end
