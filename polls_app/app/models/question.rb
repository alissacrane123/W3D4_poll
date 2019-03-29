# == Schema Information
#
# Table name: questions
#
#  id            :bigint(8)        not null, primary key
#  poll_id       :integer          not null
#  question_text :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Question < ApplicationRecord
  belongs_to(
    :poll,
    foreign_key: :poll_id,
    primary_key: :id,
    class_name: 'Poll'
  )

  has_many(
    :answers,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: 'AnswerChoice'
  )

  has_many(
    :responses,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: 'Response'
  )
end
