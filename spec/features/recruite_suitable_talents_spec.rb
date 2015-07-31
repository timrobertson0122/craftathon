require 'spec_helper'
require 'rails_helper'

feature 'Recruitement' do
  before(:each) do
    Job.create(title: 'Junior Front End Developer', description: 'HTML5, CSS3, Jquery')
    Job.create(title: 'Full Stack Developer', description: 'Working on Ruby on Rails')
    visit '/'
  end

  scenario 'listing jobs' do
    expect(page).to have_content('Junior Front End Developer')
  end
end
