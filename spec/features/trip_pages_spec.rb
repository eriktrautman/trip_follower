require 'spec_helper'

describe "Trips" do
  before(:each) {visit path}
  subject { page }

  context "new trip" do
    let(:path) {new_trip_path}

    it {should have_selector('title', text: "New Trip")}
    it {should have_selector('h1', text: "Create New Trip")}
  end
end
