require 'spec_helper'

describe "UserPages" do

  	subject { page }

  	describe "signup page" do
  		before { visit signup_path }	#go to localhost:3000/users/new

  		it { should have_selector('h1', text: 'Sign up') }
  	end

  	describe "signup" do
  		before { visit signup_path }
  		let(:submit) { "Sign up" }	#tell that submit button is Signup button in page

  		describe "with invalid information" do
  			it "should not create account a user" do
  				expect	{ click_button submit }.not_to change(User, :count)
  				# if click button user ,user not add
  			end	

        describe "after submission" do
        before { click_button submit }

        it { should have_content('error') }
        end 
      end

  		describe "with valid information" do
  			before do
  				fill_in "Name", 					with: "Noom"
  				fill_in "Email", 					with: "n@jp.com"
  				fill_in "Password", 				with: "noom"
  				fill_in "Password Confirmation", 	with: "noom"
  				# simulate text fill
  			end
  			it "should create a user" do
  				expect { click_button submit }.to change(User, :count).by(1)
  			end

  		end
  	end

end
