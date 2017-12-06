require 'rails_helper'

RSpec.describe "home page", type: :feature do
  it 'boots the environment' do
    visit admin_path
    expect(page).to have_content('Pacts')
    expect(page).to have_content('Ian created a pact')
  end
end
