# == Schema Information
#
# Table name: responses
#
#  id           :bigint(8)        not null, primary key
#  responder_id :integer          not null
#  question_id  :integer          not null
#  answer_id    :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Response < ApplicationRecord
  validates :responder_id,  :question_id, :answer_id, presence: true
  
  belongs_to :responder,
    foreign_key: :responder_id,
    primary_key: :id,
    class_name: 'User'
  

  belongs_to :question,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: 'Question'
  

  belongs_to :answer,
    foreign_key: :answer_id,
    primary_key: :id,
    class_name: 'AnswerChoice'
  
end
