class User < ActiveRecord::Base
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
