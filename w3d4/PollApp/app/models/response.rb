# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  respondent_id    :integer          not null
#  answer_choice_id :integer          not null
#

class Response < ActiveRecord::Base
  validates :respondent_id, :answer_choice_id, presence: true
  belongs_to(
    :respondent, {
      class_name: :User,
      primary_key: :id,
      foreign_key: :respondent_id
    }
  )
  belongs_to(
    :answer_choice, {
      class_name: :AnswerChoice,
      primary_key: :id,
      foreign_key: :answer_choice_id
    }
  )
  has_one(
    :question,
    through: :answer_choice
  )
end
