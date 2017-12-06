require 'securerandom'

class PactCreator

  def self.create!(form, source: 'none')
    Pact.transaction do
      pact = Pact.create!(
        action: form.action,
        people_requirement: form.people_requirement,
        source: source
      )
      pact_member = PactMember.create!(
        pact: pact,
        name: form.name,
        email: form.email,
        public_slug: SecureRandom.hex(4),
        member_slug: SecureRandom.hex(4),
        creator: true,
        source: source
      )
      pact_member
    end
  end

  def self.join!(original_member, form, source: 'none')
    Pact.transaction do
      pact_member = PactMember.create!(
        pact: original_member.pact,
        name: form.name,
        email: form.email,
        public_slug: SecureRandom.hex(4),
        member_slug: SecureRandom.hex(4),
        creator: false,
        referrer: original_member,
        source: source
      )
      pact_member
    end
  end
end
