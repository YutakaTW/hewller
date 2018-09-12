class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :message

  validates :name, :presence => {:message => 'Please input your name'}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :format => {with: VALID_EMAIL_REGEX, :message => 'Please input your email address'}
  validates :message, :presence => {:message => 'Please input your inquiry'}
end