module ApplicationHelper
  def pact_text(pact_member, pact)
    pact_text = "I, #{pact_member.name}, will #{pact.action}"
    if pact.member_difference > 0
      if pact.member_count == 1
        pact_text << " and I need #{pluralize(pact.people_requirement, 'people')} to join me."
      else
        pact_text << " with #{pact.member_names(without: pact_member)} and we need #{pluralize(pact.member_difference, 'people')} to join us."
      end
    end
    pact_text
  end
end
