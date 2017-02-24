require 'rails_helper'

describe 'see all jobs process' do
  it 'show jobs' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link("See All Jobs")
    expect(page).to have_content 'Jobs'
  end
end
