require 'rails_helper'

describe 'test ajax for claiming job', js: true do
  it 'text ajax claim' do
    worker = FactoryGirl.create(:worker)
    login_as(worker, :scope => :worker)
    job = FactoryGirl.create(:job)
    visit job_path(job)
    click_on('Claim')
    page.find('#job_completed').click
    click_on('Completed')
    expect(page).to have_content 'true'
  end
end
