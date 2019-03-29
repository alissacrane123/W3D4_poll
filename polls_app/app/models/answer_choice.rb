# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer          not null
#  answer_text :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
  
  belongs_to(
    :question,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: 'Question'
  )

end
