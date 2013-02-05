require 'spec_helper'

describe User do

  before do
    @user = User.new( fname: "Example", lname: "User", email: "user@example.com" )
  end

  subject { @user }

  it { should respond_to(:fname) }
  it { should respond_to(:lname) }
  it { should respond_to(:email) }

  it { should be_valid }


end