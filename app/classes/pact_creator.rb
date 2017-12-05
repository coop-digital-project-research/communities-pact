require 'securerandom'

class PactCreator
  def self.create!(form)
    Pact.transaction do
      pact = Pact.create!(
        action: form.action,
        people_requirement: form.people_requirement
      )
      pact_member = PactMember.create!(
        pact: pact,
        name: form.name,
        email: form.email,
        public_slug: SecureRandom.hex(4),
        member_slug: SecureRandom.hex(4),
        creator: true
      )
      pact_member
    end
  end
end
