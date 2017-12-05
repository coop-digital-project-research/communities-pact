class PactMember < ApplicationRecord
  belongs_to :pact
  belongs_to :referrer, class_name: 'PactMember', optional: true
end
