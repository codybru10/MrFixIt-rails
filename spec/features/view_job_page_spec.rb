require 'rails_helper'

describe 'view job detail process' do
  it 'see job detail' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    job = FactoryGirl.create(:job)
    visit jobs_path
    click_link("Gutter Repair")
    expect(page).to have_content 'fix'
  end
end
