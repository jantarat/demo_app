require 'spec_helper'

describe "UserPages" do

  	subject { page }

  	describe "signup page" do
  		before { visit signup_path }	#go to localhost:3000/users/new

  		it { should have_selector('h1', text: 'Sign up') }

  	end
end
