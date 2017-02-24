require 'rails_helper'

describe 'test ajax for claiming job', js: true do
  it 'text ajax claim' do
    worker = FactoryGirl.create(:worker)
    login_as(worker, :scope => :worker)
    job = FactoryGirl.create(:job)
    visit job_path(job)
    page.find('#claim-link').click
    expect(page).to have_content 'Claimed by you!'
  end
end
