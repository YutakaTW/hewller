class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :message

  validates :name, :presence => {message: :namealert}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :format => {with: VALID_EMAIL_REGEX, message: :emailalert}
  validates :message, :presence => {message: :inquiryalert}
end