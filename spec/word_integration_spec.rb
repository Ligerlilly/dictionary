require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'dictionary path', { type: :feature } do
  it 'takes user input and creates a word' do
    visit '/'
    first(:link, 'Add Word').click
    fill_in 'word', with: 'Homer'
    click_button 'Submit'
    expect(page).to have_content 'Homer'
  end

  it 'take user input and creates a definition for a word' do
    visit '/'
    first(:link, 'Add Word').click
    fill_in 'word', with: 'Homer'
    click_button 'Submit'
    first(:link, 'Homer').click
    click_link 'Add Definition'
    fill_in 'def', with: 'Fictional cartoon character'
    click_button 'Submit'
    expect(page).to have_content 'Definitions'
    expect(page).to have_content 'Fictional cartoon character'
  end
end
