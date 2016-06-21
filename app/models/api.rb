class Api < ActiveRecord::Base
  belongs_to :user
  has_many   :reviews, dependent: :destroy

  validates :name, presence: true
  validates :url, presence: true
  validates :name, uniqueness: { scope: :url }
  validates :description, presence: true

  CATEGORIES = [
    'News',
    'Sports',
    'Data',
    'Events',
    'Food',
    'Music',
    'Geolocation',
    'Financial' 
  ]

    def self.add_tags(api, tags)
      tags.each do |tag|
        new_tag = Tag.new(name: "#{tag}")
        new_tag.save
        new_join = ApiTag.new(api: api, tag: new_tag)
        new_join.save
      end
    end

    def owner?(user)
      if self.user == user
        true
      else
        false
      end
    end

    def average_rating
      total_score = 0
      total_reviews = self.reviews.count

      rating = self.reviews.each do |review|
        total_score += review.rating
      end

      unless total_reviews == 0
        total_score / total_reviews
      else
        0 
      end
    end

    def print_stars(average_rating)
      stars = ''
      unless average_rating == 0 
        average_rating.times do
          stars += '★ '
        end
        (5-average_rating).times do
          stars += '☆ '
        end
      else
        stars = '☆ ☆ ☆ ☆ ☆'
      end
      stars
    end

    def self.search(query)
      results = Api.where("name LIKE ? OR description LIKE ? OR url LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
    end
end
