require 'rails_helper'

RSpec.describe "home page", type: :feature do
  it 'boots the environment' do
    visit '/'
    expect(page).to have_content('Pacts')
    expect(page).to have_content('Ian has created a pact')
  end
end
