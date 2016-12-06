require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('users is able to add a word and view word', {:type => :feature}) do
  it "add a word to word list" do
    visit ('/')
    click_button'Add a new word'
    fill_in 'name', :with => 'Epicodus'
    click_on 'Enter'
    click_button 'Home'
    click_button 'All Words'
    expect(page).to have_content 'Epicodus'
  end
end

describe('users is able click on word and edit', {:type => :feature}) do
  it "add definition to word" do
    visit ('/words')
    click_link'Epicodus'
    click_button 'Add a definition'
    fill_in 'description', :with => 'Roxks'
    click_button 'Enter'
    click_button 'Home'
    click_button 'All Words'
    click_link 'Epicodus'
    expect(page).to have_content 'Roxks '
  end
end
