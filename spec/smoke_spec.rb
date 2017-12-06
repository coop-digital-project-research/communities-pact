require 'rails_helper'

RSpec.describe "home page", type: :feature do
  it 'boots the environment' do
    visit pact_path(PactMember.first.public_slug)
    expect(page).to have_content('I, Ian, will sweep the pavement of Station Road')
  end
end
