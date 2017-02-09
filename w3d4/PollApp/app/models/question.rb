# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  poll_id    :integer          not null
#  text       :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  validates :poll_id, :text, presence: true
  belongs_to(
    :poll, {
      class_name: :Poll,
      primary_key: :id,
      foreign_key: :poll_id
    }
  )
  has_many(
    :answer_choices, {
      class_name: :AnswerChoice,
      primary_key: :id,
      foreign_key: :answer_choice_id
    }
  )
end
