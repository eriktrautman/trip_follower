require 'spec_helper'

describe "User Pages" do

  subject { page }

  describe "index" do
    before(:all) { 5.times { FactoryGirl.create(:user) } }
    after(:all) { User.delete_all }
    let(:users) { User.all }
    before(:each) {visit users_path}

    it { source.should have_selector('title', text: 'Users') }
    it { should have_selector('h1', text: 'Users') }

    it "should list each user" do
      users.each do |user|
        page.should have_selector('li', text: user.email)
      end
    end

  end

  describe "show" do
    before(:each) {visit user}
  end

  describe "new" do
  end

  describe "edit" do
  end

end
