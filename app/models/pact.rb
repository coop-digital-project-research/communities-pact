class Pact < ApplicationRecord

  has_many :members, class_name: 'PactMember'

  def member_count
    members.size
  end

  def member_difference
    (people_requirement + 1) - member_count # people requirement does not include the creator
  end

  def member_names(without: [])
    (members - [without].flatten).map(&:name).to_sentence
  end
end
