module ApplicationHelper
  def pact_text(pact_member, pact)
    pact_text = "I, #{strip_tags(pact_member.name)}, will #{strip_tags(pact.action)}"
    if pact.member_difference > 0
      if pact.member_count == 1
        pact_text << " and I need #{pluralize(pact.people_requirement, 'more person')} to join me."
      else
        pact_text << " with #{strip_tags(pact.member_names(without: pact_member))} and we need #{pluralize(pact.member_difference, 'more person')} to join us."
      end
    else
      pact_text << " with #{strip_tags(pact.member_names(without: pact_member))}."
    end
    pact_text
  end
end
