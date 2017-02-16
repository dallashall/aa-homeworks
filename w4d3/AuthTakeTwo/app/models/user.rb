# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :text             not null
#  password_digest :text             not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_reader :password

  validates :username, presence: true
  validates :password_digest, presence: { message: "Password cannot be blank." }
  validates :password, presence: true, length: { minimum: 6, message: "Must be more than 6 characters" }
  validates :session_token, presence: true
  before_validation :ensure_session_token

  def self.find_by_credentials(username, password)
    User.find_by(username: username)
    return user if user && user.is_password?(password)
  end

  def unique_token
    SecureRandom.urlsafe_base64(16)
  end

  def ensure_session_token
    self.session_token ||= unique_token
  end

  def reset_session_token!
    self.session_token = unique_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(@password_digest).is_password?(password)
  end

end
