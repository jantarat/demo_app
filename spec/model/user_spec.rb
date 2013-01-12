require 'spec_helper'

describe User do
  before { @user = User.new(name: "John Doe", email: "john@gmail.com")}
  subject {@user}

  it { should respond_to(:name)}
  it { should respond_to(:email)}

  describe "when name is not present" do
    before { @user.name = "" }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    before { @user.email = "john.gmail.com" }
    it { should_not be_valid }
  end 

  describe "when email format is invalid" do
    before { @user.email = "john@gmail.com" }
    it { should be_valid }
  end 

end
