class Api < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true
  validates :name, uniqueness: { scope: :url }
  validates :description, presence: true

  has_many :reviews
  has_many :apitags
  has_many :tags, through: :apitags
end
