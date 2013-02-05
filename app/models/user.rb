class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validate :email, uniqueness: true, format: {with: VALID_EMAIL_REGEX}
end
