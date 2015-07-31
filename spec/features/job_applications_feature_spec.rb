require 'rails_helper'

feature 'On the applications page' do
  before(:each) do
    jobhunter = Jobhunter.create(name: 'John')
    jobhunter.job_applications.create
  end
  scenario 'viewing all applications' do
    visit '/jobapplications'
    expect(page).to have_content 'Your application has been received.'
  end
end