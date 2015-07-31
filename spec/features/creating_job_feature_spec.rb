require 'rails_helper'

feature 'An employer wants to add a job' do

  scenario 'and fills out the form' do

    visit '/questionaires/new'
    fill_in 'questionaire_title', with: 'Software Developer'
    fill_in 'questionaire_company_name', with: 'Makers Academy'
    fill_in 'questionaire_size', with: '20'
    fill_in 'questionaire_tasks', with: 'Make coffee and bring cookies'
    expect { click_button 'Create a job' }.to change { Job.count }.by 1
    expect(current_path).to eq '/jobs'
    expect(page).to have_content 'Software Developer'
  end

end