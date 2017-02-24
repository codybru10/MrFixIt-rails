require 'rails_helper'

describe 'test ajax for pending job', js: true do
  it 'text ajax pending' do
    worker = FactoryGirl.create(:worker)
    login_as(worker, :scope => :worker)
    job = FactoryGirl.create(:job)
    visit job_path(job)
    click_on('Claim')
    page.find('#job_pending').click
    click_on('In Progress')
    expect(page).to have_content 'true'
  end
end
