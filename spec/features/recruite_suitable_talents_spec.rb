require 'spec_helper'
require 'rails_helper'

feature 'Recruitement' do
  before(:each) do
    job1 = Job.create(description: 'HTML5, CSS3, Jquery')
    job2 = Job.create(description: 'Working on Ruby on Rails')
    Questionaire.create(title: 'Junior Front End Developer', job_id: job1.id)
    Questionaire.create(title: 'Senior Front End Developer', job_id: job2.id)
    visit '/jobs'
  end

  scenario 'listing jobs' do
    expect(page).to have_content('Junior Front End Developer')
  end

  scenario 'can apply for a job' do
    job = Job.first
    click_on "Apply for #{job.questionaire.title}"
    expect(current_path).to eq "/jobapplications"
  end
end
