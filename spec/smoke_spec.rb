require 'rails_helper'

RSpec.describe "home page", type: :feature do
  it 'boots the environment' do
    visit '/'
    expect(page).to have_content('Pacts')
    expect(page).to have_content('I, Ian, will sweep the pavement of Station Road, and I need 10 people to join me')
  end
end
