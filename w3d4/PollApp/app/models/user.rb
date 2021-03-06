# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  user_name  :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  validates :user_name, presence: true
  has_many(
    :authored_polls, {
      class_name: :Poll,
      primary_key: :id,
      foreign_key: :poll_id
    }
  )
  has_many(
    :responses, {
      class_name: :Response,
      primary_key: :id,
      foreign_key: :respondent_id
    }
  )
end
