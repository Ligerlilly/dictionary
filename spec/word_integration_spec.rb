require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'dictionary path', { type: :feature } do
  it 'takes user input and creates a word' do
    visit '/'
    click_link 'Add Word'
    fill_in 'word', with: 'Homer'
    click_button 'Submit'
    expect(page).to have_content 'Homer'
  end
end
