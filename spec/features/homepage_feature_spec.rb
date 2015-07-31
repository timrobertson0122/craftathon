require 'rails_helper'

feature 'On the home page' do

  scenario 'it identifies the user as a jobhunter' do
    visit '/'
    click_on 'I am looking for a job'
    expect(current_path).to eq '/jobs'
    expect(page).to have_content 'Available jobs'
  end

  xscenario 'it allows user as an employer' do
    visit '/'
    click_on 'I am looking for an employee'

  end
end