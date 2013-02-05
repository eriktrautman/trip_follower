class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: VALID_EMAIL_REGEX}
  validates :fname, presence: true
  validates :lname, presence: true

  has_many :trips
end
